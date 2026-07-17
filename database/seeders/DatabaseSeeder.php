<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $sqlPath = base_path('boog3197_photobooth.sql');
        
        if (!File::exists($sqlPath)) {
            $this->command->error("SQL dump file not found at: {$sqlPath}");
            $this->call(UserSeeder::class);
            return;
        }

        $this->command->info("Parsing and importing SQL dump...");

        $sql = File::get($sqlPath);

        // Strip single line comments starting with --
        $sql = preg_replace('/^\s*--.*$/m', '', $sql);

        // Strip multi-line comments
        $sql = preg_replace('/\/\\*.*?\\*\//s', '', $sql);

        // Turn off foreign key constraints
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        // Parse file to extract only INSERT statements
        $queries = preg_split('/;\s*[\r\n]+/', $sql);

        $insertedCount = 0;
        foreach ($queries as $query) {
            $query = trim($query);
            if (empty($query)) {
                continue;
            }

            // Extract table name to filter out migrations, cache, jobs, etc.
            if (preg_match('/^\s*INSERT\s+INTO\s+`?(\w+)`?/i', $query, $matches)) {
                $tableName = $matches[1];
                
                $ignoredTables = [
                    'migrations', 
                    'cache', 
                    'cache_locks', 
                    'jobs', 
                    'failed_jobs', 
                    'personal_access_tokens', 
                    'sessions'
                ];

                if (in_array($tableName, $ignoredTables)) {
                    continue;
                }

                try {
                    DB::unprepared($query . ';');
                    $insertedCount++;
                } catch (\Exception $e) {
                    $this->command->warn("Failed executing query for {$tableName}: " . substr($query, 0, 100) . "... Error: " . $e->getMessage());
                }
            }
        }

        // Turn foreign key constraints back on
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        // Copy photo assets from public/photo_assets to storage/app/public/photo_assets if they exist
        $sourceDir = public_path('photo_assets');
        $destDir = storage_path('app/public/photo_assets');
        
        if (File::isDirectory($sourceDir)) {
            if (!File::isDirectory($destDir)) {
                File::makeDirectory($destDir, 0755, true);
            }
            
            $files = File::files($sourceDir);
            $syncedCount = 0;
            foreach ($files as $file) {
                $fileName = $file->getFilename();
                $destFile = $destDir . '/' . $fileName;
                if (!File::exists($destFile)) {
                    File::copy($file->getRealPath(), $destFile);
                    $syncedCount++;
                }
            }
            if ($syncedCount > 0) {
                $this->command->info("Synced {$syncedCount} photo assets to storage successfully!");
            }
        }

        $this->command->info("SQL seed data imported successfully! Total {$insertedCount} tables/statements populated.");
    }
}
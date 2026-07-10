<?php

$db = new PDO('mysql:host=127.0.0.1;dbname=photobooth', 'root', 'root');

echo "=== DATABASE SCHEMA CHECK ===\n\n";

// Get all tables
$tables = $db->query('SHOW TABLES')->fetchAll(PDO::FETCH_COLUMN);
echo "✓ TOTAL TABLES: " . count($tables) . "\n";
echo "=" . str_repeat("-", 50) . "\n\n";

foreach ($tables as $table) {
    echo "TABLE: $table\n";
    
    // Get columns
    $columns = $db->query("DESCRIBE $table")->fetchAll(PDO::FETCH_ASSOC);
    echo "  Columns: " . count($columns) . "\n";
    
    // Get foreign keys
    $fks = $db->query("
        SELECT CONSTRAINT_NAME, COLUMN_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
        FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
        WHERE TABLE_NAME = '$table' AND REFERENCED_TABLE_NAME IS NOT NULL
    ")->fetchAll(PDO::FETCH_ASSOC);
    
    if (!empty($fks)) {
        echo "  Foreign Keys:\n";
        foreach ($fks as $fk) {
            echo "    - {$fk['COLUMN_NAME']} → {$fk['REFERENCED_TABLE_NAME']}.{$fk['REFERENCED_COLUMN_NAME']}\n";
        }
    }
    
    echo "\n";
}

echo "=" . str_repeat("-", 50) . "\n";
echo "✓ Database schema check complete!\n";

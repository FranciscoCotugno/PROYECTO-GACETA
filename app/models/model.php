<?php
require_once "database/config.php";
class Model
{
protected $db;

  function __construct()
  {
    $this->db = new PDO('mysql:host=' . MYSQL_HOST . ';dbname=' . MYSQL_DB . ';charset=utf8', MYSQL_USER, MYSQL_PASS);
    $this->deploy();
  }

  function deploy()
  {
    $query = $this->db->query('SHOW TABLES');
    $tables = $query->fetchAll();
    if (count($tables) == 0) {
      $sql = <<<END
      CREATE TABLE `artist` (
        `Artist_id` int(11) NOT NULL,
        `Artist_name` varchar(200) NOT NULL,
        `Artist_tittle` text NOT NULL,
        `Artist_bio` text NOT NULL,
        `Category_id` int(11) NOT NULL
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
      
      -- --------------------------------------------------------
      
      --
      -- Table structure for table `categorys`
      --
      
      CREATE TABLE `categorys` (
        `Category_id` int(11) NOT NULL,
        `Category_name` varchar(200) NOT NULL
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
      
      --
      -- Indexes for dumped tables
      --
      
      --
      -- Indexes for table `artist`
      --
      ALTER TABLE `artist`
        ADD PRIMARY KEY (`Artist_id`),
        ADD KEY `Category_id` (`Category_id`);
      
      --
      -- Indexes for table `categorys`
      --
      ALTER TABLE `categorys`
        ADD PRIMARY KEY (`Category_id`);
      
      --
      -- AUTO_INCREMENT for dumped tables
      --
      
      --
      -- AUTO_INCREMENT for table `artist`
      --
      ALTER TABLE `artist`
        MODIFY `Artist_id` int(11) NOT NULL AUTO_INCREMENT;
      
      --
      -- AUTO_INCREMENT for table `categorys`
      --
      ALTER TABLE `categorys`
        MODIFY `Category_id` int(11) NOT NULL AUTO_INCREMENT;
      
      --
      -- Constraints for dumped tables
      --
      
      --
      -- Constraints for table `artist`
      --
      ALTER TABLE `artist`
        ADD CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`Category_id`) REFERENCES `categorys` (`Category_id`);
      COMMIT;
      
      END;
      $this->db->query($sql);
    }
  }
}
-- Create myorder table for gold jewelry reservations
CREATE TABLE IF NOT EXISTS `myorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `nokp` varchar(20) DEFAULT NULL,
  `jewelry_type` varchar(50) NOT NULL,
  `karat` varchar(10) NOT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `reservation_date` datetime NOT NULL,
  `status` enum('pending','confirmed','in_progress','completed','cancelled') DEFAULT 'pending',
  `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`),
  KEY `idx_phone` (`phone`),
  KEY `idx_status` (`status`),
  KEY `idx_reservation_date` (`reservation_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert sample data (optional)
INSERT INTO `myorder` (`name`, `email`, `phone`, `nokp`, `jewelry_type`, `karat`, `weight`, `price`, `description`, `image`, `reservation_date`, `status`) VALUES
('John Doe', 'john@example.com', '0123456789', '123456789012', 'Ring', '18K', 5.50, 2500.00, 'Custom wedding ring with diamond setting', 'uploads/sample_ring.jpg', NOW(), 'pending'),
('Jane Smith', 'jane@example.com', '0987654321', '987654321098', 'Necklace', '22K', 12.75, 5800.00, 'Traditional necklace with pendant design', 'uploads/sample_necklace.jpg', NOW(), 'confirmed');

-- Create index for better performance (with limited email length to avoid index size issues)
CREATE INDEX idx_myorder_email_phone ON myorder(email(50), phone);
CREATE INDEX idx_myorder_jewelry_type ON myorder(jewelry_type);
CREATE INDEX idx_myorder_karat ON myorder(karat);

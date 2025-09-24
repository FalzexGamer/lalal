<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
extract($_REQUEST);

if(isset($save)) {
    $weight = mysqli_real_escape_string($conn, $_POST["weight"]);
    $errors = [];
    $success = false;
    
    // Validate and process form data
    $name = trim($_POST['name'] ?? '');
    $email = trim($_POST['email'] ?? '');
    $phone = trim($_POST['phone'] ?? '');
    $jewelry_type = trim($_POST['jewelry_type'] ?? '');
    $karat = trim($_POST['karat'] ?? '');
    $weight = trim($_POST['weight'] ?? '');
    $price = trim($_POST['price'] ?? '');
    $description = trim($_POST['description'] ?? '');
    
    // Basic validation
    if (empty($name)) $errors[] = 'Name is required';
    if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) $errors[] = 'Valid email is required';
    if (empty($phone)) $errors[] = 'Phone number is required';
    if (empty($jewelry_type)) $errors[] = 'Jewelry type is required';
    if (empty($karat)) $errors[] = 'Gold karat selection is required';
    if (empty($description)) $errors[] = 'Description is required';
    
    // Process image upload
    $image_path = '';
    if (isset($_FILES['jewelry_image']) && $_FILES['jewelry_image']['error'] === UPLOAD_ERR_OK) {
        $upload_dir = 'uploads/';
        if (!file_exists($upload_dir)) {
            mkdir($upload_dir, 0755, true);
        }
        
        $temp_name = $_FILES['jewelry_image']['tmp_name'];
        $original_name = basename($_FILES['jewelry_image']['name']);
        $extension = pathinfo($original_name, PATHINFO_EXTENSION);
        $new_filename = uniqid() . '.' . $extension;
        $target_path = $upload_dir . $new_filename;
        
        // Check if image is valid
        $check = getimagesize($temp_name);
        if ($check !== false) {
            if (move_uploaded_file($temp_name, $target_path)) {
                $image_path = $target_path;
            } else {
                $errors[] = 'Sorry, there was an error uploading your file.';
            }
        } else {
            $errors[] = 'File is not an image.';
        }
    } else {
        $errors[] = 'Jewelry image is required';
    }
    
    // If no errors, process the reservation
    if (empty($errors)) {
        $reservation_data = [
            'name' => $name,
            'email' => $email,
            'phone' => $phone,
            'nokp' => $nokp,
            'jewelry_type' => $jewelry_type,
            'karat' => $karat,
            'weight' => $weight,
            'price' => $price,
            'description' => $description,
            'image_path' => $image_path,
            'reservation_date' => date('Y-m-d H:i:s')
        ];

        // Prepare SQL statement
        $stmt = $conn->prepare("INSERT INTO myorder (name, email, phone, nokp, jewelry_type, karat, weight, price, description, image, reservation_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param(
            "ssssssdssss",
            $reservation_data['name'],
            $reservation_data['email'],
            $reservation_data['phone'],
            $reservation_data['nokp'],
            $reservation_data['jewelry_type'],
            $reservation_data['karat'],
            $reservation_data['weight'],
            $reservation_data['price'],
            $reservation_data['description'],
            $reservation_data['image_path'],
            $reservation_data['reservation_date']
        );

        if ($stmt->execute()) {
            $success = true;
        } else {
            $errors[] = "Database insert failed: " . $stmt->error;
        }

        $stmt->close();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Gold Jewelry Order Reservation - Lalal Gold">
    <meta name="keywords" content="gold jewelry, custom order, reservation, lalal gold">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Gold Jewelry Order - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .reservation-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            padding-bottom: 120px;
        }
        
        .reservation-header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 215, 0, 0.2);
            padding: var(--spacing-lg);
        }
        
        .reservation-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.5rem;
            margin: 0;
        }
        
        .reservation-content {
            padding: var(--spacing-lg);
        }
        
        .reservation-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-xl);
            margin-bottom: var(--spacing-lg);
            position: relative;
            overflow: hidden;
        }
        
        .reservation-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 3px;
            background: linear-gradient(90deg, var(--accent-gold) 0%, #ffed4e 50%, var(--accent-gold) 100%);
            animation: shimmer 3s infinite;
        }
        
        @keyframes shimmer {
            0% { transform: translateX(-100%); }
            100% { transform: translateX(100%); }
        }
        
        .reservation-header-section {
            text-align: center;
            margin-bottom: var(--spacing-xl);
        }
        
        .reservation-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto var(--spacing-lg);
            box-shadow: 0 8px 32px rgba(255, 215, 0, 0.3);
        }
        
        .reservation-icon i {
            font-size: 2rem;
            color: var(--primary-green);
        }
        
        .reservation-title-main {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 2rem;
            margin-bottom: var(--spacing-sm);
            text-shadow: 0 2px 10px rgba(255, 215, 0, 0.3);
        }
        
        .reservation-subtitle {
            color: var(--gray-300);
            font-size: 1.1rem;
            line-height: 1.6;
        }
        
        .form-group {
            margin-bottom: var(--spacing-lg);
        }
        
        .form-label {
            color: var(--accent-gold);
            font-weight: 600;
            font-size: 0.9rem;
            margin-bottom: var(--spacing-sm);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .form-input {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.3);
            border-radius: var(--radius-lg);
            padding: var(--spacing-md);
            color: var(--accent-gold);
            font-size: 1rem;
            width: 100%;
            backdrop-filter: blur(10px);
            transition: var(--transition-normal);
        }
        
        .form-input:focus {
            outline: none;
            border-color: var(--accent-gold);
            box-shadow: 0 0 20px rgba(255, 215, 0, 0.2);
        }
        
        .form-input::placeholder {
            color: var(--gray-400);
        }
        
        .image-upload {
            border: 2px dashed rgba(255, 215, 0, 0.5);
            padding: var(--spacing-xl);
            text-align: center;
            border-radius: var(--radius-lg);
            margin-bottom: var(--spacing-lg);
            cursor: pointer;
            transition: var(--transition-normal);
            background: rgba(255, 215, 0, 0.05);
        }
        
        .image-upload:hover {
            border-color: var(--accent-gold);
            background: rgba(255, 215, 0, 0.1);
        }
        
        .image-upload i {
            font-size: 3rem;
            color: var(--accent-gold);
            margin-bottom: var(--spacing-md);
            display: block;
        }
        
        .image-upload p {
            color: var(--gray-300);
            margin: 0;
        }
        
        #imagePreview {
            max-width: 200px;
            max-height: 200px;
            margin: var(--spacing-md) auto;
            display: block;
            border-radius: var(--radius-lg);
            border: 2px solid rgba(255, 215, 0, 0.3);
        }
        
        .jewelry-details {
            background: rgba(255, 215, 0, 0.05);
            border: 1px solid rgba(255, 215, 0, 0.2);
            border-radius: var(--radius-xl);
            padding: var(--spacing-xl);
            margin-top: var(--spacing-lg);
        }
        
        .jewelry-details h3 {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-lg);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .karat-selector {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
            gap: var(--spacing-sm);
            margin-top: var(--spacing-md);
        }
        
        .karat-option {
            position: relative;
        }
        
        .karat-option input[type="radio"] {
            display: none;
        }
        
        .karat-option label {
            display: block;
            padding: var(--spacing-md);
            text-align: center;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.3);
            border-radius: var(--radius-lg);
            cursor: pointer;
            transition: var(--transition-normal);
            color: var(--gray-300);
            font-weight: 500;
        }
        
        .karat-option input[type="radio"]:checked + label {
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            color: var(--primary-green);
            border-color: var(--accent-gold);
            transform: translateY(-2px);
            box-shadow: 0 4px 16px rgba(255, 215, 0, 0.3);
        }
        
        .reservation-btn {
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-lg);
            border-radius: var(--radius-lg);
            font-weight: 700;
            font-size: 1.1rem;
            width: 100%;
            transition: var(--transition-normal);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
            margin-top: var(--spacing-lg);
        }
        
        .reservation-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 40px rgba(255, 215, 0, 0.4);
            color: var(--primary-green);
        }
        
        .error-message {
            background: rgba(255, 107, 107, 0.1);
            border: 1px solid rgba(255, 107, 107, 0.3);
            border-radius: var(--radius-lg);
            padding: var(--spacing-md);
            color: #ff6b6b;
            font-size: 0.9rem;
            margin-bottom: var(--spacing-lg);
        }
        
        .error-message ul {
            margin: var(--spacing-sm) 0;
            padding-left: var(--spacing-lg);
        }
        
        .success-message {
            background: rgba(76, 175, 80, 0.1);
            border: 1px solid rgba(76, 175, 80, 0.3);
            border-radius: var(--radius-lg);
            padding: var(--spacing-lg);
            color: #4caf50;
            font-size: 1rem;
            margin-bottom: var(--spacing-lg);
            text-align: center;
        }
        
        .success-message i {
            font-size: 2rem;
            margin-bottom: var(--spacing-sm);
            display: block;
        }
        
        /* Mobile responsive */
        @media (max-width: 768px) {
            .reservation-content {
                padding: var(--spacing-md);
            }
            
            .reservation-card {
                padding: var(--spacing-lg);
            }
            
            .reservation-title-main {
                font-size: 1.5rem;
            }
            
            .reservation-icon {
                width: 60px;
                height: 60px;
            }
            
            .reservation-icon i {
                font-size: 1.5rem;
            }
            
            .karat-selector {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</head>

<body>
    <div class="reservation-container">
        <!-- Header -->
        <header class="reservation-header">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex align-items-center gap-3">
                    <a href="index-luxury.php" class="text-decoration-none">
                        <i class="fas fa-arrow-left text-gold" style="font-size: 1.2rem; color: var(--accent-gold);"></i>
                    </a>
                    <h1 class="reservation-title">Gold Jewelry Order</h1>
                </div>
                <div class="reservation-icon-small">
                    <i class="fas fa-gem" style="font-size: 1.5rem; color: var(--accent-gold);"></i>
                </div>
            </div>
        </header>

        <!-- Content -->
        <div class="reservation-content">
            <div class="reservation-card">
                <!-- Header Section -->
                <div class="reservation-header-section">
                    <div class="reservation-icon">
                        <i class="fas fa-gem"></i>
                    </div>
                    <h2 class="reservation-title-main">Custom Gold Jewelry</h2>
                    <p class="reservation-subtitle">Design your dream piece with our premium gold crafting service</p>
                </div>

                <!-- Error Messages -->
                <?php if (!empty($errors)): ?>
                    <div class="error-message">
                        <h4><i class="fas fa-exclamation-triangle"></i> Please correct the following errors:</h4>
                        <ul>
                            <?php foreach ($errors as $error): ?>
                                <li><?php echo htmlspecialchars($error); ?></li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                <?php endif; ?>

                <!-- Success Message -->
                <?php if (isset($success) && $success): ?>
                    <div class="success-message">
                        <i class="fas fa-check-circle"></i>
                        <h3>Reservation Successful!</h3>
                        <p>Thank you for your gold jewelry order. We'll contact you shortly to confirm the details and begin crafting your piece.</p>
                    </div>
                <?php endif; ?>

                <!-- Reservation Form -->
                <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post" enctype="multipart/form-data" id="reservationForm">
                    <!-- Personal Information -->
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-user"></i>
                            Full Name
                        </label>
                        <input type="text" id="name" name="name" class="form-input" 
                               placeholder="Enter your full name" required 
                               value="<?php echo htmlspecialchars($name ?? ''); ?>">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-envelope"></i>
                            Email Address
                        </label>
                        <input type="email" id="email" name="email" class="form-input" 
                               placeholder="Enter your email address" required 
                               value="<?php echo htmlspecialchars($email ?? ''); ?>">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-phone"></i>
                            Phone Number
                        </label>
                        <input type="tel" id="phone" name="phone" class="form-input" 
                               placeholder="Enter your phone number" required 
                               value="<?php echo htmlspecialchars($nofon ?? ''); ?>">
                    </div>

                    <!-- Jewelry Details -->
                    <div class="jewelry-details">
                        <h3>
                            <i class="fas fa-crown"></i>
                            Jewelry Design Details
                        </h3>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-camera"></i>
                                Upload Design Image
                            </label>
                            <div class="image-upload" onclick="document.getElementById('jewelry_image').click();">
                                <i class="fas fa-camera"></i>
                                <p>Click to upload image of your jewelry design</p>
                                <img id="imagePreview" src="" alt="Preview" style="display: none;">
                            </div>
                            <input type="file" id="jewelry_image" name="jewelry_image" 
                                   accept="image/*" style="display: none;" required>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-ring"></i>
                                Type of Jewelry
                            </label>
                            <select id="jewelry_type" name="jewelry_type" class="form-input" required>
                                <option value="">Select jewelry type</option>
                                <option value="Ring" <?php echo (($jewelry_type ?? '') === 'Ring') ? 'selected' : ''; ?>>Ring</option>
                                <option value="Necklace" <?php echo (($jewelry_type ?? '') === 'Necklace') ? 'selected' : ''; ?>>Necklace</option>
                                <option value="Bracelet" <?php echo (($jewelry_type ?? '') === 'Bracelet') ? 'selected' : ''; ?>>Bracelet</option>
                                <option value="Earrings" <?php echo (($jewelry_type ?? '') === 'Earrings') ? 'selected' : ''; ?>>Earrings</option>
                                <option value="Pendant" <?php echo (($jewelry_type ?? '') === 'Pendant') ? 'selected' : ''; ?>>Pendant</option>
                                <option value="Bangle" <?php echo (($jewelry_type ?? '') === 'Bangle') ? 'selected' : ''; ?>>Bangle</option>
                                <option value="Other" <?php echo (($jewelry_type ?? '') === 'Other') ? 'selected' : ''; ?>>Other</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-gem"></i>
                                Gold Karat
                            </label>
                            <div class="karat-selector">
                                <div class="karat-option">
                                    <input type="radio" id="karat14" name="karat" value="14K" 
                                           <?php echo (($karat ?? '') === '14K') ? 'checked' : ''; ?> required>
                                    <label for="karat14">14K Gold</label>
                                </div>
                                <div class="karat-option">
                                    <input type="radio" id="karat18" name="karat" value="18K" 
                                           <?php echo (($karat ?? '') === '18K') ? 'checked' : ''; ?>>
                                    <label for="karat18">18K Gold</label>
                                </div>
                                <div class="karat-option">
                                    <input type="radio" id="karat22" name="karat" value="22K" 
                                           <?php echo (($karat ?? '') === '22K') ? 'checked' : ''; ?>>
                                    <label for="karat22">22K Gold</label>
                                </div>
                                <div class="karat-option">
                                    <input type="radio" id="karat24" name="karat" value="24K" 
                                           <?php echo (($karat ?? '') === '24K') ? 'checked' : ''; ?>>
                                    <label for="karat24">24K Gold</label>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-weight-hanging"></i>
                                Estimated Weight (grams)
                            </label>
                            <input type="number" id="weight" name="weight" class="form-input" 
                                   step="0.01" min="0" placeholder="Enter estimated weight">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-coins"></i>
                                Estimated Price (RM)
                            </label>
                            <input type="number" id="price" name="price" class="form-input" 
                                   step="0.01" min="0" placeholder="Enter estimated price">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">
                                <i class="fas fa-edit"></i>
                                Description
                            </label>
                            <textarea id="description" name="description" class="form-input" 
                                      rows="4" placeholder="Describe your jewelry design in detail" required></textarea>
                        </div>
                    </div>
                    
                    <!-- Submit Button -->
                    <button class="reservation-btn" type="submit" name="save">
                        <i class="fas fa-gem"></i>
                        Place Order
                    </button>
                </form>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Image preview functionality
        document.getElementById('jewelry_image').addEventListener('change', function(e) {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(event) {
                    const preview = document.getElementById('imagePreview');
                    preview.src = event.target.result;
                    preview.style.display = 'block';
                }
                reader.readAsDataURL(file);
            }
        });
        
        // Form validation
        document.getElementById('reservationForm').addEventListener('submit', function(e) {
            const requiredFields = this.querySelectorAll('[required]');
            let isValid = true;
            
            requiredFields.forEach(field => {
                if (!field.value.trim()) {
                    isValid = false;
                    field.style.borderColor = '#ff6b6b';
                } else {
                    field.style.borderColor = 'rgba(255, 215, 0, 0.3)';
                }
            });
            
            if (!isValid) {
                e.preventDefault();
                alert('Please fill in all required fields.');
            }
        });
        
        // Add smooth animations
        document.addEventListener('DOMContentLoaded', function() {
            const reservationCard = document.querySelector('.reservation-card');
            reservationCard.classList.add('animate-fade-in-up');
            
            // Add input focus effects
            const inputs = document.querySelectorAll('.form-input');
            inputs.forEach(input => {
                input.addEventListener('focus', function() {
                    this.parentElement.style.transform = 'translateY(-2px)';
                });
                
                input.addEventListener('blur', function() {
                    this.parentElement.style.transform = 'translateY(0)';
                });
            });
        });
    </script>
</body>
</html>
<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');
extract($_REQUEST);

$today = date("Y-m-d");

// Handle form submission
if(isset($save)) {
    $tarikh = mysqli_real_escape_string($conn, $_REQUEST['tarikh']);	
    
    $sql = "INSERT INTO videocall(`tarikh`,`username`, `nama`, `nofon`)
    VALUES ('$tarikh','$username', '$nama', '$nofon')";

    if ($conn->query($sql) === TRUE) {
        echo "<script>window.location.href='confirm_videocall.php';</script>";
    }
}

// Get user's video call schedule
$query = mysqli_query($conn, "SELECT * FROM videocall WHERE username='$username' ORDER BY recno ASC");
$scheduled_calls = [];

while($res = mysqli_fetch_array($query)) {
    $tarikh = $res['tarikh'];
    $tarikh1 = date('d-m-Y', strtotime($tarikh));
    $status = $res['status'];
    
    $scheduled_calls[] = [
        'tarikh' => $tarikh1,
        'status' => $status
    ];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Schedule Video Call - Lalal Gold">
    <meta name="keywords" content="video call, jewelry consultation, premium gold">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Schedule Video Call - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .video-call-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            padding-bottom: 120px;
        }
        
        .video-call-header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 215, 0, 0.2);
            padding: var(--spacing-lg);
        }
        
        .video-call-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.5rem;
            margin: 0;
        }
        
        .hero-section {
            text-align: center;
            padding: var(--spacing-xl);
            position: relative;
        }
        
        .hero-image {
            width: 200px;
            height: 200px;
            object-fit: cover;
            border-radius: 50%;
            border: 3px solid var(--accent-gold);
            margin-bottom: var(--spacing-lg);
            box-shadow: 0 10px 40px rgba(255, 215, 0, 0.2);
        }
        
        .hero-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 2rem;
            margin-bottom: var(--spacing-md);
            text-shadow: 0 2px 10px rgba(255, 215, 0, 0.3);
        }
        
        .hero-subtitle {
            color: var(--gray-300);
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: var(--spacing-lg);
        }
        
        .benefits-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: var(--spacing-md);
            margin: var(--spacing-lg) 0;
        }
        
        .benefit-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-lg);
            padding: var(--spacing-lg);
            text-align: center;
            transition: var(--transition-normal);
        }
        
        .benefit-card:hover {
            border-color: var(--accent-gold);
            transform: translateY(-4px);
            box-shadow: 0 8px 32px rgba(255, 215, 0, 0.1);
        }
        
        .benefit-icon {
            color: var(--accent-gold);
            font-size: 2rem;
            margin-bottom: var(--spacing-sm);
        }
        
        .benefit-title {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
            font-size: 1rem;
        }
        
        .benefit-text {
            color: var(--gray-300);
            font-size: 0.9rem;
            line-height: 1.4;
        }
        
        .schedule-form {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-xl);
            margin: var(--spacing-lg);
        }
        
        .form-title {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-lg);
            font-size: 1.2rem;
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .date-input {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.3);
            border-radius: var(--radius-lg);
            padding: var(--spacing-md);
            color: var(--accent-gold);
            font-size: 1rem;
            width: 100%;
            backdrop-filter: blur(10px);
            margin-bottom: var(--spacing-lg);
        }
        
        .date-input:focus {
            outline: none;
            border-color: var(--accent-gold);
            box-shadow: 0 0 20px rgba(255, 215, 0, 0.2);
        }
        
        .schedule-btn {
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
        }
        
        .schedule-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 40px rgba(255, 215, 0, 0.4);
            color: var(--primary-green);
        }
        
        .schedule-list-section {
            padding: var(--spacing-lg);
        }
        
        .section-title {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-lg);
            font-size: 1.3rem;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: var(--spacing-sm);
        }
        
        .schedule-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-lg);
            margin-bottom: var(--spacing-md);
            transition: var(--transition-normal);
        }
        
        .schedule-card:hover {
            border-color: var(--accent-gold);
            transform: translateY(-2px);
            box-shadow: 0 8px 32px rgba(255, 215, 0, 0.1);
        }
        
        .schedule-header {
            display: flex;
            align-items: center;
            gap: var(--spacing-md);
        }
        
        .schedule-icon {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--primary-green);
            font-size: 1.2rem;
        }
        
        .schedule-info h4 {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-xs);
            font-size: 1.1rem;
        }
        
        .schedule-status {
            color: var(--gray-300);
            font-size: 0.9rem;
            font-weight: 500;
        }
        
        .status-badge {
            background: linear-gradient(135deg, var(--accent-gold) 0%, #ffed4e 100%);
            color: var(--primary-green);
            border: none;
            padding: var(--spacing-xs) var(--spacing-sm);
            border-radius: var(--radius-full);
            font-weight: 600;
            font-size: 0.8rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        
        .empty-schedule {
            text-align: center;
            padding: var(--spacing-2xl);
            color: var(--gray-300);
        }
        
        .empty-schedule i {
            font-size: 4rem;
            color: var(--accent-gold);
            margin-bottom: var(--spacing-lg);
            opacity: 0.5;
        }
        
        .empty-schedule h3 {
            color: var(--accent-gold);
            margin-bottom: var(--spacing-md);
            font-weight: 600;
        }
        
        .empty-schedule p {
            color: var(--gray-400);
            margin-bottom: var(--spacing-lg);
        }
        
        /* Mobile responsive */
        @media (max-width: 768px) {
            .hero-title {
                font-size: 1.5rem;
            }
            
            .hero-image {
                width: 150px;
                height: 150px;
            }
            
            .benefits-grid {
                grid-template-columns: 1fr;
            }
            
            .schedule-form {
                margin: var(--spacing-md);
                padding: var(--spacing-lg);
            }
        }
    </style>
</head>

<body>
    <div class="video-call-container">
        <!-- Header -->
        <header class="video-call-header">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex align-items-center gap-3">
                    <a href="index-luxury.php" class="text-decoration-none">
                        <i class="fas fa-arrow-left text-gold" style="font-size: 1.2rem; color: var(--accent-gold);"></i>
                    </a>
                    <h1 class="video-call-title">Video Consultation</h1>
                </div>
                <div class="video-icon">
                    <i class="fas fa-video" style="font-size: 1.5rem; color: var(--accent-gold);"></i>
                </div>
            </div>
        </header>

        <!-- Hero Section -->
        <div class="hero-section">
            <img src="img/videocall1.png" alt="Video Call" class="hero-image">
            <h2 class="hero-title">Schedule Your Video Consultation</h2>
            <p class="hero-subtitle">
                Experience our premium jewelry collection from the comfort of your home.<br>
                Save time & money with personalized virtual consultations.
            </p>
        </div>

        <!-- Benefits Grid -->
        <div class="benefits-grid" style="padding: 0 var(--spacing-lg);">
            <div class="benefit-card">
                <div class="benefit-icon">
                    <i class="fas fa-clock"></i>
                </div>
                <div class="benefit-title">Save Time</div>
                <div class="benefit-text">No travel needed, consult from anywhere</div>
            </div>
            <div class="benefit-card">
                <div class="benefit-icon">
                    <i class="fas fa-coins"></i>
                </div>
                <div class="benefit-title">Save Money</div>
                <div class="benefit-text">No transportation costs</div>
            </div>
            <div class="benefit-card">
                <div class="benefit-icon">
                    <i class="fas fa-gem"></i>
                </div>
                <div class="benefit-title">Premium Service</div>
                <div class="benefit-text">Expert consultation & guidance</div>
            </div>
        </div>

        <!-- Schedule Form -->
        <form method="post" enctype="multipart/form-data" class="schedule-form">
            <h5 class="form-title">
                <i class="fas fa-calendar-plus"></i>
                Choose Your Preferred Date
            </h5>
            <input type="date" id="tarikh" name="tarikh" min="<?php echo $today; ?>" 
                   class="date-input" required>
            <button type="submit" name="save" class="schedule-btn">
                <i class="fas fa-video"></i>
                Schedule Video Consultation
            </button>
        </form>

        <!-- Schedule List -->
        <div class="schedule-list-section">
            <h3 class="section-title">
                <i class="fas fa-list-alt"></i>
                Your Scheduled Consultations
            </h3>
            
            <?php if (empty($scheduled_calls)): ?>
            <!-- Empty State -->
            <div class="empty-schedule">
                <i class="fas fa-calendar-times"></i>
                <h3>No Scheduled Calls</h3>
                <p>Schedule your first video consultation to get started</p>
            </div>
            <?php else: ?>
            
            <!-- Schedule Cards -->
            <?php foreach ($scheduled_calls as $call): ?>
            <div class="schedule-card">
                <div class="schedule-header">
                    <div class="schedule-icon">
                        <i class="fas fa-video"></i>
                    </div>
                    <div class="schedule-info flex-grow-1">
                        <h4>Date: <?php echo $call['tarikh']; ?></h4>
                        <div class="schedule-status">
                            Status: <span class="status-badge"><?php echo $call['status']; ?></span>
                        </div>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
            <?php endif; ?>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Add smooth animations
        document.addEventListener('DOMContentLoaded', function() {
            const cards = document.querySelectorAll('.benefit-card, .schedule-card');
            cards.forEach((card, index) => {
                card.style.animationDelay = `${index * 0.1}s`;
                card.classList.add('animate-fade-in-up');
            });
            
            // Animate hero section
            const heroSection = document.querySelector('.hero-section');
            heroSection.classList.add('animate-fade-in-up');
        });
        
        // Add hover effects
        document.querySelectorAll('.benefit-card, .schedule-card').forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-4px) scale(1.02)';
            });
            
            card.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0) scale(1)';
            });
        });
        
        // Form validation
        document.querySelector('form').addEventListener('submit', function(e) {
            const dateInput = document.getElementById('tarikh');
            if (!dateInput.value) {
                e.preventDefault();
                alert('Please select a date for your video consultation.');
                return false;
            }
        });
    </script>
</body>
</html>
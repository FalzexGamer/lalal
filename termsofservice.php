<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Terms of Service - Lalal Gold">
    <meta name="keywords" content="terms of service, legal, gold trading">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Terms of Service - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .terms-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            padding-bottom: 120px;
        }
        
        .terms-header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 215, 0, 0.2);
            padding: var(--spacing-lg);
        }
        
        .terms-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.5rem;
            margin: 0;
        }
        
        .terms-content {
            padding: var(--spacing-lg);
        }
        
        .terms-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-xl);
            margin-bottom: var(--spacing-lg);
        }
        
        .terms-intro {
            color: var(--gray-300);
            font-size: 1.1rem;
            line-height: 1.7;
            margin-bottom: var(--spacing-xl);
            text-align: center;
            font-style: italic;
        }
        
        .section-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.4rem;
            margin-bottom: var(--spacing-lg);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
            border-bottom: 2px solid rgba(255, 215, 0, 0.2);
            padding-bottom: var(--spacing-sm);
        }
        
        .section-content {
            color: var(--gray-300);
            line-height: 1.7;
            margin-bottom: var(--spacing-lg);
        }
        
        .section-content p {
            margin-bottom: var(--spacing-md);
        }
        
        .section-content ul {
            margin: var(--spacing-md) 0;
            padding-left: var(--spacing-lg);
        }
        
        .section-content li {
            margin-bottom: var(--spacing-sm);
            color: var(--gray-300);
        }
        
        .section-content strong {
            color: var(--accent-gold);
            font-weight: 600;
        }
        
        .section-content a {
            color: var(--accent-gold);
            text-decoration: none;
            font-weight: 500;
            transition: var(--transition-normal);
        }
        
        .section-content a:hover {
            color: #ffed4e;
            text-decoration: underline;
        }
        
        .contact-info {
            background: rgba(255, 215, 0, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.2);
            border-radius: var(--radius-lg);
            padding: var(--spacing-lg);
            margin-top: var(--spacing-lg);
        }
        
        .contact-info h3 {
            color: var(--accent-gold);
            font-weight: 600;
            margin-bottom: var(--spacing-md);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
        }
        
        .contact-item {
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
            margin-bottom: var(--spacing-sm);
            color: var(--gray-300);
        }
        
        .contact-icon {
            color: var(--accent-gold);
            font-size: 1.1rem;
            width: 20px;
        }
        
        .back-btn {
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
            text-decoration: none;
        }
        
        .back-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 40px rgba(255, 215, 0, 0.4);
            color: var(--primary-green);
            text-decoration: none;
        }
        
        .section-divider {
            height: 1px;
            background: linear-gradient(90deg, transparent 0%, rgba(255, 215, 0, 0.3) 50%, transparent 100%);
            margin: var(--spacing-xl) 0;
        }
        
        .highlight-box {
            background: rgba(255, 215, 0, 0.05);
            border-left: 4px solid var(--accent-gold);
            padding: var(--spacing-lg);
            margin: var(--spacing-lg) 0;
            border-radius: 0 var(--radius-lg) var(--radius-lg) 0;
        }
        
        .highlight-box p {
            color: var(--gray-300);
            margin: 0;
            font-style: italic;
        }
        
        /* Mobile responsive */
        @media (max-width: 768px) {
            .terms-content {
                padding: var(--spacing-md);
            }
            
            .terms-card {
                padding: var(--spacing-lg);
            }
            
            .section-title {
                font-size: 1.2rem;
            }
            
            .terms-intro {
                font-size: 1rem;
            }
        }
    </style>
</head>

<body>
    <div class="terms-container">
        <!-- Header -->
        <header class="terms-header">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex align-items-center gap-3">
                    <a href="javascript:history.back()" class="text-decoration-none">
                        <i class="fas fa-arrow-left text-gold" style="font-size: 1.2rem; color: var(--accent-gold);"></i>
                    </a>
                    <h1 class="terms-title">Terms of Service</h1>
                </div>
                <div class="terms-icon">
                    <i class="fas fa-file-contract" style="font-size: 1.5rem; color: var(--accent-gold);"></i>
                </div>
            </div>
        </header>

        <!-- Content -->
        <div class="terms-content">
            <div class="terms-card">
                <p class="terms-intro">
                    Welcome to the Lalal Gold mobile app (the "App"). By downloading, accessing, or using the App, you agree to comply with and be bound by these Terms of Service ("Terms"). Please read them carefully. If you do not agree to these Terms, please do not use the App.
                </p>

                <!-- Section 1 -->
                <div class="section-title">
                    <i class="fas fa-check-circle"></i>
                    1. Acceptance of Terms
                </div>
                <div class="section-content">
                    <p>1.1 By using the App, you acknowledge that you have read, understood, and agreed to these Terms.</p>
                    <p>1.2 These Terms constitute a legally binding agreement between you and Lalal Gold ("we," "us," or "our").</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 2 -->
                <div class="section-title">
                    <i class="fas fa-user-check"></i>
                    2. Eligibility
                </div>
                <div class="section-content">
                    <p>2.1 You must be at least 18 years old to use the App. If you are under 18, you may only use the App under the supervision of a parent or legal guardian who agrees to be bound by these Terms.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 3 -->
                <div class="section-title">
                    <i class="fas fa-mobile-alt"></i>
                    3. Use of the App
                </div>
                <div class="section-content">
                    <p>3.1 You may use the App for personal, non-commercial purposes only.</p>
                    <p>3.2 You agree not to:</p>
                    <ul>
                        <li>Violate any applicable laws or regulations.</li>
                        <li>Use the App for fraudulent or illegal activities.</li>
                        <li>Interfere with the operation of the App or its security features.</li>
                        <li>Copy, distribute, or modify the App without our permission.</li>
                    </ul>
                </div>

                <div class="section-divider"></div>

                <!-- Section 4 -->
                <div class="section-title">
                    <i class="fas fa-user-plus"></i>
                    4. Accounts and Registration
                </div>
                <div class="section-content">
                    <p>4.1 To access certain features of the App, you may need to create an account.</p>
                    <p>4.2 You agree to provide accurate and complete information during registration and to keep your account details secure.</p>
                    <p>4.3 You are responsible for all activities that occur under your account. Notify us immediately of any unauthorized use.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 5 -->
                <div class="section-title">
                    <i class="fas fa-shopping-cart"></i>
                    5. Ordering and Payment
                </div>
                <div class="section-content">
                    <p>5.1 The App allows you to place orders for gold products and jewelry from Lalal Gold App.</p>
                    <p>5.2 Prices and availability are subject to change without notice.</p>
                    <p>5.3 Payments must be made through the methods provided in the App. All payments are non-refundable unless stated otherwise.</p>
                    <p>5.4 We reserve the right to cancel or reject any order at our discretion.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 6 -->
                <div class="section-title">
                    <i class="fas fa-truck"></i>
                    6. Delivery and Pickup
                </div>
                <div class="section-content">
                    <p>6.1 Delivery and pickup options will be displayed during the ordering process.</p>
                    <p>6.2 Estimated delivery times are not guaranteed and may vary due to unforeseen circumstances.</p>
                    <p>6.3 You are responsible for ensuring that delivery details are accurate and accessible.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 7 -->
                <div class="section-title">
                    <i class="fas fa-copyright"></i>
                    7. Intellectual Property
                </div>
                <div class="section-content">
                    <p>7.1 All content on the App, including but not limited to text, graphics, logos, and images, is the property of Lalal Gold App or its licensors.</p>
                    <p>7.2 You may not reproduce, distribute, or create derivative works from any content on the App without prior written consent.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 8 -->
                <div class="section-title">
                    <i class="fas fa-shield-alt"></i>
                    8. Privacy Policy
                </div>
                <div class="section-content">
                    <p>8.1 Your use of the App is also governed by our Privacy Policy, which can be accessed <a href="privacypolicy.php">here</a>.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 9 -->
                <div class="section-title">
                    <i class="fas fa-exclamation-triangle"></i>
                    9. Limitation of Liability
                </div>
                <div class="section-content">
                    <p>9.1 To the fullest extent permitted by law, Lalal Gold shall not be liable for any damages arising from your use of the App, including but not limited to:</p>
                    <ul>
                        <li>Loss of data, revenue, or profits.</li>
                        <li>Service interruptions or delays.</li>
                        <li>Any unauthorized access to your account.</li>
                    </ul>
                </div>

                <div class="section-divider"></div>

                <!-- Section 10 -->
                <div class="section-title">
                    <i class="fas fa-ban"></i>
                    10. Termination
                </div>
                <div class="section-content">
                    <p>10.1 We reserve the right to suspend or terminate your access to the App at our discretion, without notice, for violations of these Terms or other reasons.</p>
                    <p>10.2 Upon termination, your right to use the App will immediately cease.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 11 -->
                <div class="section-title">
                    <i class="fas fa-edit"></i>
                    11. Amendments to Terms
                </div>
                <div class="section-content">
                    <p>11.1 We may update these Terms from time to time. Any changes will be effective immediately upon posting.</p>
                    <p>11.2 Continued use of the App after changes indicates your acceptance of the updated Terms.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 12 -->
                <div class="section-title">
                    <i class="fas fa-balance-scale"></i>
                    12. Governing Law
                </div>
                <div class="section-content">
                    <p>12.1 These Terms are governed by the laws of Malaysia.</p>
                    <p>12.2 Any disputes arising from these Terms shall be subject to the exclusive jurisdiction of the courts in Kuala Lumpur, Malaysia.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 13 -->
                <div class="section-title">
                    <i class="fas fa-phone"></i>
                    13. Contact Us
                </div>
                <div class="section-content">
                    <p>If you have any questions about these Terms, please contact us:</p>
                    
                    <div class="contact-info">
                        <h3>
                            <i class="fas fa-info-circle"></i>
                            Contact Information
                        </h3>
                        <div class="contact-item">
                            <i class="fas fa-envelope contact-icon"></i>
                            <span><strong>Email:</strong> ask@lalalgold.com</span>
                        </div>
                        <div class="contact-item">
                            <i class="fas fa-phone contact-icon"></i>
                            <span><strong>Phone:</strong> 03-2694 1462</span>
                        </div>
                        <div class="contact-item">
                            <i class="fas fa-map-marker-alt contact-icon"></i>
                            <span><strong>Address:</strong> Semua House, 16, Jalan Bunus 6, Jalan Masjid India, 50100 Kuala Lumpur</span>
                        </div>
                    </div>
                </div>

                <div class="highlight-box">
                    <p>Thank you for using the Lalal Gold App!</p>
                </div>
            </div>

            <!-- Back Button -->
            <a href="javascript:history.back()" class="back-btn">
                <i class="fas fa-arrow-left"></i>
                Back to Previous Page
            </a>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Add smooth animations
        document.addEventListener('DOMContentLoaded', function() {
            const sections = document.querySelectorAll('.section-title');
            sections.forEach((section, index) => {
                section.style.animationDelay = `${index * 0.1}s`;
                section.classList.add('animate-fade-in-up');
            });
            
            // Animate terms card
            const termsCard = document.querySelector('.terms-card');
            termsCard.classList.add('animate-fade-in-up');
        });
        
        // Add scroll effects
        window.addEventListener('scroll', function() {
            const sections = document.querySelectorAll('.section-title');
            sections.forEach(section => {
                const rect = section.getBoundingClientRect();
                if (rect.top < window.innerHeight && rect.bottom > 0) {
                    section.style.opacity = '1';
                    section.style.transform = 'translateY(0)';
                }
            });
        });
    </script>
</body>
</html>
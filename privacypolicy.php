<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Privacy Policy - Lalal Gold">
    <meta name="keywords" content="privacy policy, data protection, gold trading">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>Privacy Policy - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
    
    <style>
        .privacy-container {
            background: linear-gradient(135deg, var(--primary-green) 0%, #001a0d 100%);
            min-height: 100vh;
            padding-bottom: 120px;
        }
        
        .privacy-header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 215, 0, 0.2);
            padding: var(--spacing-lg);
        }
        
        .privacy-title {
            color: var(--accent-gold);
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 1.5rem;
            margin: 0;
        }
        
        .privacy-content {
            padding: var(--spacing-lg);
        }
        
        .privacy-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 215, 0, 0.1);
            border-radius: var(--radius-xl);
            padding: var(--spacing-xl);
            margin-bottom: var(--spacing-lg);
        }
        
        .privacy-intro {
            color: var(--gray-300);
            font-size: 1.1rem;
            line-height: 1.7;
            margin-bottom: var(--spacing-xl);
            text-align: center;
            font-style: italic;
        }
        
        .effective-date {
            background: rgba(255, 215, 0, 0.1);
            border: 1px solid rgba(255, 215, 0, 0.2);
            border-radius: var(--radius-lg);
            padding: var(--spacing-md);
            margin-bottom: var(--spacing-lg);
            text-align: center;
        }
        
        .effective-date strong {
            color: var(--accent-gold);
            font-weight: 600;
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
        
        .section-subtitle {
            color: var(--accent-gold);
            font-weight: 600;
            font-size: 1.1rem;
            margin: var(--spacing-lg) 0 var(--spacing-md);
            display: flex;
            align-items: center;
            gap: var(--spacing-sm);
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
            .privacy-content {
                padding: var(--spacing-md);
            }
            
            .privacy-card {
                padding: var(--spacing-lg);
            }
            
            .section-title {
                font-size: 1.2rem;
            }
            
            .privacy-intro {
                font-size: 1rem;
            }
        }
    </style>
</head>

<body>
    <div class="privacy-container">
        <!-- Header -->
        <header class="privacy-header">
            <div class="d-flex align-items-center justify-content-between">
                <div class="d-flex align-items-center gap-3">
                    <a href="javascript:history.back()" class="text-decoration-none">
                        <i class="fas fa-arrow-left text-gold" style="font-size: 1.2rem; color: var(--accent-gold);"></i>
                    </a>
                    <h1 class="privacy-title">Privacy Policy</h1>
                </div>
                <div class="privacy-icon">
                    <i class="fas fa-shield-alt" style="font-size: 1.5rem; color: var(--accent-gold);"></i>
                </div>
            </div>
        </header>

        <!-- Content -->
        <div class="privacy-content">
            <div class="privacy-card">
                <div class="effective-date">
                    <strong>Effective Date:</strong> 01 December 2024
                </div>
                
                <p class="privacy-intro">
                    Lalal Gold ("we," "us," or "our") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use the Lalal Gold mobile app (the "App"). By using the App, you agree to the practices described in this policy.
                </p>

                <!-- Section 1 -->
                <div class="section-title">
                    <i class="fas fa-database"></i>
                    1. Information We Collect
                </div>
                
                <div class="section-subtitle">
                    <i class="fas fa-user-edit"></i>
                    1.1 Information You Provide to Us:
                </div>
                <div class="section-content">
                    <ul>
                        <li><strong>Account Information:</strong> When you create an account, we collect your name, email address, phone number, and password.</li>
                        <li><strong>Order Information:</strong> When you place an order, we collect details such as your delivery address, order preferences, and payment information.</li>
                        <li><strong>Gold Trading Data:</strong> Information related to your gold purchases, sales, and portfolio management.</li>
                    </ul>
                </div>

                <div class="section-subtitle">
                    <i class="fas fa-mobile-alt"></i>
                    1.2 Information We Collect Automatically:
                </div>
                <div class="section-content">
                    <ul>
                        <li><strong>Device Information:</strong> We collect details about your device, including its model, operating system, and unique identifiers.</li>
                        <li><strong>Usage Data:</strong> We track how you interact with the App, such as pages viewed, features used, and time spent.</li>
                        <li><strong>Location Data:</strong> With your permission, we may collect your location to provide delivery and location-based services.</li>
                        <li><strong>Trading Patterns:</strong> Information about your gold trading activities and preferences.</li>
                    </ul>
                </div>

                <div class="section-subtitle">
                    <i class="fas fa-handshake"></i>
                    1.3 Information from Third Parties:
                </div>
                <div class="section-content">
                    <p>We may receive information from third-party payment processors, delivery partners, and financial institutions to complete your transactions and provide gold trading services.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 2 -->
                <div class="section-title">
                    <i class="fas fa-cogs"></i>
                    2. How We Use Your Information
                </div>
                <div class="section-content">
                    <p>We use the information we collect to:</p>
                    <ul>
                        <li>Provide and improve the App and our gold trading services.</li>
                        <li>Process your orders, payments, and gold transactions.</li>
                        <li>Deliver your orders and manage delivery logistics.</li>
                        <li>Communicate with you about your orders, updates, and promotions.</li>
                        <li>Ensure security and prevent fraudulent activities.</li>
                        <li>Provide personalized gold trading recommendations.</li>
                        <li>Comply with legal obligations and financial regulations.</li>
                    </ul>
                </div>

                <div class="section-divider"></div>

                <!-- Section 3 -->
                <div class="section-title">
                    <i class="fas fa-share-alt"></i>
                    3. Sharing Your Information
                </div>
                <div class="section-content">
                    <p>We may share your information with:</p>
                    <ul>
                        <li><strong>Service Providers:</strong> Third-party vendors who assist with payment processing, order delivery, and App functionality.</li>
                        <li><strong>Financial Institutions:</strong> Banks and payment processors for gold trading transactions.</li>
                        <li><strong>Legal Authorities:</strong> When required by law or to protect our rights, users, or property.</li>
                        <li><strong>Business Transfers:</strong> In case of a merger, acquisition, or sale of assets, your information may be transferred as part of the transaction.</li>
                    </ul>
                </div>

                <div class="section-divider"></div>

                <!-- Section 4 -->
                <div class="section-title">
                    <i class="fas fa-user-check"></i>
                    4. Your Choices
                </div>
                
                <div class="section-subtitle">
                    <i class="fas fa-user-edit"></i>
                    4.1 Account Information:
                </div>
                <div class="section-content">
                    <p>You can update or delete your account information at any time through the App settings.</p>
                </div>

                <div class="section-subtitle">
                    <i class="fas fa-map-marker-alt"></i>
                    4.2 Location Data:
                </div>
                <div class="section-content">
                    <p>You can disable location services in your device's settings, though this may limit certain features.</p>
                </div>

                <div class="section-subtitle">
                    <i class="fas fa-envelope"></i>
                    4.3 Marketing Communications:
                </div>
                <div class="section-content">
                    <p>You can opt out of promotional emails by following the unsubscribe link in the email. However, we may still send you non-promotional messages related to your account, orders, or gold trading activities.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 5 -->
                <div class="section-title">
                    <i class="fas fa-clock"></i>
                    5. Data Retention
                </div>
                <div class="section-content">
                    <p>We retain your information as long as your account is active or as needed to fulfill the purposes outlined in this policy. We may retain and use your information to comply with legal obligations, resolve disputes, enforce our agreements, and maintain financial records as required by law.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 6 -->
                <div class="section-title">
                    <i class="fas fa-lock"></i>
                    6. Security
                </div>
                <div class="section-content">
                    <p>We implement industry-standard security measures to protect your information from unauthorized access, use, or disclosure. This includes encryption, secure servers, and regular security audits. However, no method of transmission over the internet or electronic storage is completely secure. Use the App at your own risk.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 7 -->
                <div class="section-title">
                    <i class="fas fa-edit"></i>
                    7. Changes to This Privacy Policy
                </div>
                <div class="section-content">
                    <p>We may update this Privacy Policy from time to time. Any changes will be effective immediately upon posting the updated policy on the App. Your continued use of the App after changes indicates your acceptance of the updated policy.</p>
                </div>

                <div class="section-divider"></div>

                <!-- Section 8 -->
                <div class="section-title">
                    <i class="fas fa-phone"></i>
                    8. Contact Us
                </div>
                <div class="section-content">
                    <p>If you have any questions or concerns about this Privacy Policy, please contact us:</p>
                    
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
                    <p>Thank you for trusting Lalal Gold with your information.</p>
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
            
            // Animate privacy card
            const privacyCard = document.querySelector('.privacy-card');
            privacyCard.classList.add('animate-fade-in-up');
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
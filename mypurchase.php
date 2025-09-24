<?php 
date_default_timezone_set("Asia/Kuala_Lumpur"); 
include('inc/dt.php'); 
include('inc/sesi.php'); 
//include('inc/notification_functions.php');
extract($_REQUEST);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Lalal Gold - My Purchase History">
    <meta name="keywords" content="gold trading, purchase history, jewelry, receipts">
    <meta name="author" content="Lalal Gold">
    
    <!-- Security Headers -->
    <meta http-equiv="X-Content-Type-Options" content="nosniff">
    <meta http-equiv="X-Frame-Options" content="DENY">
    <meta http-equiv="X-XSS-Protection" content="1; mode=block">
    <meta http-equiv="Referrer-Policy" content="strict-origin-when-cross-origin">
    
    <link rel="icon" href="icon/logo2.png" type="image/png">
    <title>My Purchase History - Lalal Gold</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Playfair+Display:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Luxury Theme CSS -->
    <link rel="stylesheet" href="css/luxury-theme.css">
</head>

<body>
    <div class="luxury-container">
        <!-- Header -->
        <header class="luxury-header">
            <div class="luxury-navbar">
                <div class="luxury-logo">
                    <a href="index-luxury.php" class="luxury-back-btn">
                        <i class="fas fa-arrow-left"></i>
                    </a>
                    <div class="logo-text">
                        <h1>My Purchase</h1>
                        <span>Transaction History</span>
                    </div>
                </div>
                
            </div>
        </header>

        <!-- Hero Section -->
        <div class="luxury-grid">
            <div class="section-header">
                <h3 class="text-display mb-3">
                    <i class="fas fa-history"></i>
                    Purchase Transactions
                </h3>
                <p class="text-muted">Your complete purchase history</p>
         

        <!-- Search Bar -->
        <div class="luxury-search animate-fade-in">
            <i class="fas fa-search luxury-search-icon"></i>
            <input type="text" id="searchReceipt" placeholder="Search by receipt number..." 
                   onkeyup="filterReceipts()">
            <button type="button" class="luxury-btn" onclick="clearSearch()">
                <i class="fas fa-times"></i>
            </button>
        </div>

        </div>

        <!-- Purchase History Section -->
       
            
            <div id="purchaseList">
                <?php
                $query = mysqli_query($conn, "SELECT * FROM bayarancustomer WHERE nokp='$nokp' ORDER BY tarikh DESC");
                $total_purchases = mysqli_num_rows($query);
                
                if ($total_purchases > 0):
                    while($res = mysqli_fetch_array($query)):
                        $tarikh = $res['tarikh'];
                        $noresit = $res['noresit'];
                        $noinvois= $res['noinvois'];
                        $jenisbayaran = $res['jenisbayaran'];
                        $jualan = $res['jualan'];
                        $tarikh2 = date('d-m-Y', strtotime($tarikh));
                        $tarikh_time = $res['masa'];
                        $lhdn_document_status = $res['lhdn_document_status'];
                        $submissionUid = $res['submissionUid'];
                        $validate = $res['validate'];
                ?>
                <div class="luxury-card purchase-card animate-fade-in-up" data-receipt="<?php echo $noresit; ?>">
                    <div class="purchase-header">
                        <div class="purchase-icon">
                            <i class="fas fa-receipt"></i>
                        </div>
                        <div class="purchase-info">

                        

                            <div class="purchase-title">Bill Number # <?php echo $noinvois; ?></div>
                            <div class="purchase-subtitle">Lalal Gold Outlet</div>
                        </div>
                        <div class="purchase-amount">
                            <div class="amount-value">RM <?php echo number_format($jualan, 2); ?></div>
                            <div class="amount-label">Total Paid</div>
                        </div>
                    </div>
                    
                    <div class="purchase-details">
                        <div class="detail-item">
                            <i class="fas fa-calendar-alt"></i>
                            <span>Purchase Date: <?php echo $tarikh2; ?></span>
                        </div>
                        <div class="detail-item">
                            <i class="fas fa-clock"></i>
                            <span>Time: <?php echo $tarikh_time; ?></span>
                        </div>
                        <div class="detail-item">
                            <i class="fas fa-credit-card"></i>
                            <span>Payment: <?php echo htmlspecialchars($jenisbayaran); ?></span>
                        </div>
                    </div>
                    
                    <div class="purchase-actions">
                        <button class="luxury-btn luxury-btn-outline" onclick="viewReceipt('<?php echo $noresit; ?>')">
                            <i class="fas fa-qrcode"></i>
                            View Details
                        </button>
                        <?php if($validate <> '-'): ?>
                        <a href="<?php echo $validate; ?>" target="_blank" class="luxury-btn luxury-btn-outline">
                            <i class="fas fa-external-link-alt"></i>
                            LHDN Validation
                        </a>    
                        <?php endif; ?>
                    </div>
                </div>
                <?php 
                    endwhile;
                else:
                ?>
                <div class="luxury-card empty-state animate-fade-in-up">
                    <div class="empty-icon">
                        <i class="fas fa-receipt"></i>
                    </div>
                    <div class="empty-content">
                        <h3 class="text-display mb-2">No Purchase History</h3>
                        <p class="text-muted">You haven't made any purchases yet. Start shopping for premium gold jewelry!</p>
                        <a href="products-luxury.php" class="luxury-btn">
                            <i class="fas fa-shopping-bag"></i>
                            Browse Products
                        </a>
                    </div>
                </div>
                <?php endif; ?>
            </div>
        </div>

        <!-- Summary Section -->
        <?php if ($total_purchases > 0): ?>
        <div class="luxury-grid">
            <div class="luxury-card summary-card animate-fade-in-up">
                <div class="summary-header">
                    <h3 class="text-display mb-3">
                        <i class="fas fa-chart-bar"></i>
                        Purchase Summary
                    </h3>
                </div>
                <div class="summary-stats">
                    <div class="summary-item">
                        <div class="summary-icon">
                            <i class="fas fa-shopping-bag"></i>
                        </div>
                        <div class="summary-content">
                            <div class="summary-value"><?php echo $total_purchases; ?></div>
                            <div class="summary-label">Total Purchases</div>
                        </div>
                    </div>
                    <div class="summary-item">
                        <div class="summary-icon">
                            <i class="fas fa-gem"></i>
                        </div>
                        <div class="summary-content">
                            <div class="summary-value">Premium</div>
                            <div class="summary-label">Quality Grade</div>
                        </div>
                    </div>
                    <div class="summary-item">
                        <div class="summary-icon">
                            <i class="fas fa-shield-alt"></i>
                        </div>
                        <div class="summary-content">
                            <div class="summary-value">100%</div>
                            <div class="summary-label">Secure</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php endif; ?>

        <!-- Bottom Navigation -->
        <nav class="luxury-bottom-nav">
            <div class="luxury-nav-items">
                <a href="index-luxury.php" class="luxury-nav-item">
                    <i class="fas fa-home luxury-nav-icon"></i>
                    <span class="luxury-nav-label">Home</span>
                </a>
                <a href="products-luxury.php" class="luxury-nav-item">
                    <i class="fas fa-shopping-bag luxury-nav-icon"></i>
                    <span class="luxury-nav-label">Shop</span>
                </a>
                <a href="cart.php" class="luxury-nav-item">
                    <i class="fas fa-shopping-cart luxury-nav-icon"></i>
                    <span class="luxury-nav-label">Cart</span>
                </a>
                <a href="profile.php" class="luxury-nav-item active">
                    <i class="fas fa-user luxury-nav-icon"></i>
                    <span class="luxury-nav-label">Profile</span>
                </a>
            </div>
        </nav>
    </div>

    <!-- Receipt Detail Modal -->
    <div id="receiptModal" class="modal-overlay">
        <div class="modal-container">
            <div class="modal-header">
                <h3 class="modal-title">
                    <i class="fas fa-receipt"></i>
                    Receipt Details
                </h3>
                <button class="modal-close" onclick="closeReceiptModal()">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <div class="modal-content" id="receiptModalContent">
                <!-- Receipt content will be loaded here -->
            </div>
            <div class="modal-footer">
                <button class="luxury-btn" onclick="printReceipt()">
                    <i class="fas fa-print"></i>
                    Print Receipt
                </button>
                <button class="luxury-btn luxury-btn-secondary" onclick="shareReceipt()">
                    <i class="fas fa-share"></i>
                    Share
                </button>
            </div>
        </div>
    </div>

         <!-- LHDN Validation Modal -->
     <div id="lhdnModal" class="modal-overlay">
         <div class="modal-container modal-large">
             <div class="modal-header">
                 <h3 class="modal-title">
                     <i class="fas fa-shield-alt"></i>
                     LHDN Validation Document
                 </h3>
                 <button class="modal-close" onclick="closeLHDNModal()">
                     <i class="fas fa-times"></i>
                 </button>
             </div>
             <div class="modal-content" id="lhdnModalContent">
                 <!-- LHDN validation content will be loaded here -->
             </div>
             <div class="modal-footer">
                 <button class="luxury-btn" onclick="downloadLHDN()">
                     <i class="fas fa-download"></i>
                     Download PDF
                 </button>
                 <button class="luxury-btn luxury-btn-secondary" onclick="printLHDN()">
                     <i class="fas fa-print"></i>
                     Print Document
                 </button>
             </div>
         </div>
     </div>

     <!-- Notification Modal -->
     <div id="notificationModal" class="modal-overlay">
         <div class="modal-container">
             <div class="modal-header">
                 <h3 class="modal-title">
                     <i class="fas fa-bell"></i>
                     Notifications
                 </h3>
                 <button class="modal-close" onclick="closeNotificationModal()">
                     <i class="fas fa-times"></i>
                 </button>
             </div>
             <div class="modal-content">
                 <div class="notification-list" id="notificationList">
                     <!-- Notifications will be loaded here -->
                 </div>
             </div>
             <div class="modal-footer">
                 <button class="luxury-btn" onclick="markAllAsRead()">
                     <i class="fas fa-check-double"></i>
                     Mark All as Read
                 </button>
                 <button class="luxury-btn luxury-btn-secondary" onclick="viewAllNotifications()">
                     <i class="fas fa-eye"></i>
                     View All
                 </button>
             </div>
         </div>
     </div>

    <!-- JavaScript -->
    <script>
                 // Smooth animations and interactions
         document.addEventListener('DOMContentLoaded', function() {
             // Add animation classes to elements
             const cards = document.querySelectorAll('.purchase-card, .summary-card');
             cards.forEach((card, index) => {
                 card.style.animationDelay = `${index * 0.1}s`;
                 card.classList.add('animate-fade-in-up');
             });
             
             // Initialize notification count
             updateNotificationCount();
         });

        function filterReceipts() {
            const searchTerm = document.getElementById('searchReceipt').value.toLowerCase();
            const purchaseCards = document.querySelectorAll('.purchase-card');
            
            purchaseCards.forEach(card => {
                const receiptNumber = card.getAttribute('data-receipt').toLowerCase();
                if (receiptNumber.includes(searchTerm)) {
                    card.style.display = 'block';
                    card.classList.add('animate-fade-in-up');
                } else {
                    card.style.display = 'none';
                }
            });
        }

        function clearSearch() {
            document.getElementById('searchReceipt').value = '';
            filterReceipts();
        }

        function viewReceipt(receiptNumber) {
            const modal = document.getElementById('receiptModal');
            const content = document.getElementById('receiptModalContent');
            
            // Simulate loading receipt details
            content.innerHTML = `
                <div class="receipt-detail">
                    <div class="receipt-header">
                        <div class="receipt-logo">
                            <i class="fas fa-crown"></i>
                        </div>
                        <div class="receipt-title">Lalal Gold</div>
                        <div class="receipt-subtitle">Premium Jewelry</div>
                    </div>
                    <div class="receipt-info">
                        <div class="receipt-item">
                            <span class="label">Receipt Number:</span>
                            <span class="value">${receiptNumber}</span>
                        </div>
                        <div class="receipt-item">
                            <span class="label">Date:</span>
                            <span class="value">${new Date().toLocaleDateString()}</span>
                        </div>
                        <div class="receipt-item">
                            <span class="label">Time:</span>
                            <span class="value">${new Date().toLocaleTimeString()}</span>
                        </div>
                        <div class="receipt-item">
                            <span class="label">Payment Method:</span>
                            <span class="value">Credit Card</span>
                        </div>
                    </div>
                    <div class="receipt-total">
                        <div class="total-label">Total Amount</div>
                        <div class="total-value">RM 2,850.00</div>
                    </div>
                </div>
            `;
            
            modal.classList.add('modal-active');
            document.body.style.overflow = 'hidden';
        }

        function closeReceiptModal() {
            const modal = document.getElementById('receiptModal');
            modal.classList.remove('modal-active');
            document.body.style.overflow = 'auto';
        }

        function downloadReceipt(receiptNumber) {
            // Simulate download functionality
            showToast(`Receipt ${receiptNumber} download started`);
        }

        function showLHDNModal(validateData) {
            const modal = document.getElementById('lhdnModal');
            const content = document.getElementById('lhdnModalContent');
            
            // Create LHDN validation document content
            content.innerHTML = `
                <div class="lhdn-document">
                    <div class="lhdn-header">
                        <div class="lhdn-logo">
                            <i class="fas fa-shield-alt"></i>
                        </div>
                        <div class="lhdn-title">
                            <h4>Lembaga Hasil Dalam Negeri Malaysia</h4>
                            <p>Inland Revenue Board of Malaysia</p>
                        </div>
                    </div>
                    
                    <div class="lhdn-content">
                        <div class="lhdn-section">
                            <h5>Document Validation</h5>
                            <div class="validation-info">
                                <div class="info-item">
                                    <span class="label">Validation Code:</span>
                                    <span class="value">${validateData}</span>
                                </div>
                                <div class="info-item">
                                    <span class="label">Status:</span>
                                    <span class="value status-valid">
                                        <i class="fas fa-check-circle"></i>
                                        Valid
                                    </span>
                                </div>
                                <div class="info-item">
                                    <span class="label">Issue Date:</span>
                                    <span class="value">${new Date().toLocaleDateString()}</span>
                                </div>
                                <div class="info-item">
                                    <span class="label">Expiry Date:</span>
                                    <span class="value">${new Date(Date.now() + 365 * 24 * 60 * 60 * 1000).toLocaleDateString()}</span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="lhdn-section">
                            <h5>Document Details</h5>
                            <div class="document-details">
                                <div class="detail-row">
                                    <span class="detail-label">Document Type:</span>
                                    <span class="detail-value">Tax Invoice</span>
                                </div>
                                <div class="detail-row">
                                    <span class="detail-label">Business Name:</span>
                                    <span class="detail-value">Lalal Gold Sdn Bhd</span>
                                </div>
                                <div class="detail-row">
                                    <span class="detail-label">Business Registration:</span>
                                    <span class="detail-value">202001234567</span>
                                </div>
                                <div class="detail-row">
                                    <span class="detail-label">Tax Period:</span>
                                    <span class="detail-value">${new Date().getFullYear()}</span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="lhdn-qr">
                            <div class="qr-code">
                                <i class="fas fa-qrcode"></i>
                            </div>
                            <p class="qr-text">Scan to verify authenticity</p>
                        </div>
                    </div>
                </div>
            `;
            
            modal.classList.add('modal-active');
            document.body.style.overflow = 'hidden';
        }

        function closeLHDNModal() {
            const modal = document.getElementById('lhdnModal');
            modal.classList.remove('modal-active');
            document.body.style.overflow = 'auto';
        }

        function downloadLHDN() {
            showToast('LHDN document download started');
        }

        function printLHDN() {
            window.print();
        }

        function printReceipt() {
            window.print();
        }

        function shareReceipt() {
            if (navigator.share) {
                navigator.share({
                    title: 'Lalal Gold Receipt',
                    text: 'Check out my purchase from Lalal Gold!',
                    url: window.location.href
                });
            } else {
                showToast('Sharing not supported on this device');
            }
        }

        function showToast(message) {
            const toast = document.createElement('div');
            toast.className = 'toast-notification';
            toast.innerHTML = `
                <i class="fas fa-check-circle"></i>
                <span>${message}</span>
            `;
            document.body.appendChild(toast);
            
            setTimeout(() => {
                toast.classList.add('toast-show');
            }, 100);
            
            setTimeout(() => {
                toast.classList.remove('toast-show');
                setTimeout(() => {
                    document.body.removeChild(toast);
                }, 300);
            }, 3000);
        }

                 function toggleNotifications() {
             const modal = document.getElementById('notificationModal');
             modal.classList.add('modal-active');
             document.body.style.overflow = 'hidden';
             loadNotifications();
         }

         function closeNotificationModal() {
             const modal = document.getElementById('notificationModal');
             modal.classList.remove('modal-active');
             document.body.style.overflow = 'auto';
         }

         function loadNotifications() {
             fetch('notification_ajax.php', {
                 method: 'POST',
                 headers: {
                     'Content-Type': 'application/x-www-form-urlencoded',
                 },
                 body: 'action=get_notifications&limit=10'
             })
             .then(response => response.json())
             .then(data => {
                 if (data.success) {
                     displayNotifications(data.notifications);
                     updateNotificationCount();
                 } else {
                     showToast('Failed to load notifications');
                 }
             })
             .catch(error => {
                 console.error('Error:', error);
                 showToast('Error loading notifications');
             });
         }

         function displayNotifications(notifications) {
             const container = document.getElementById('notificationList');
             
             if (notifications.length === 0) {
                 container.innerHTML = `
                     <div class="empty-notifications">
                         <i class="fas fa-bell-slash"></i>
                         <p>No notifications yet</p>
                     </div>
                 `;
                 return;
             }
             
             container.innerHTML = notifications.map(notification => `
                 <div class="notification-item ${notification.is_read ? '' : 'unread'}" 
                      onclick="handleNotificationClick(${notification.id}, '${notification.action_url}')">
                     <div class="notification-icon ${notification.color_class}">
                         <i class="${notification.icon}"></i>
                     </div>
                     <div class="notification-content">
                         <div class="notification-title">${notification.title}</div>
                         <div class="notification-message">${notification.message}</div>
                         <div class="notification-time">${notification.created_at}</div>
                     </div>
                     <div class="notification-status">
                         ${notification.is_read ? 
                             '<span class="read-dot"></span>' : 
                             '<span class="unread-dot"></span>'
                         }
                     </div>
                 </div>
             `).join('');
         }

         function handleNotificationClick(notificationId, actionUrl) {
             // Mark as read
             fetch('notification_ajax.php', {
                 method: 'POST',
                 headers: {
                     'Content-Type': 'application/x-www-form-urlencoded',
                 },
                 body: `action=mark_as_read&notification_id=${notificationId}`
             })
             .then(response => response.json())
             .then(data => {
                 if (data.success) {
                     // Navigate to action URL if provided
                     if (actionUrl && actionUrl !== 'null') {
                         window.location.href = actionUrl;
                     }
                     // Reload notifications
                     loadNotifications();
                 }
             })
             .catch(error => {
                 console.error('Error:', error);
             });
         }

         function markAllAsRead() {
             fetch('notification_ajax.php', {
                 method: 'POST',
                 headers: {
                     'Content-Type': 'application/x-www-form-urlencoded',
                 },
                 body: 'action=mark_all_as_read'
             })
             .then(response => response.json())
             .then(data => {
                 if (data.success) {
                     showToast('All notifications marked as read');
                     loadNotifications();
                 } else {
                     showToast('Failed to mark notifications as read');
                 }
             })
             .catch(error => {
                 console.error('Error:', error);
                 showToast('Error marking notifications as read');
             });
         }

         function viewAllNotifications() {
             // Navigate to full notifications page
             window.location.href = 'notifications.php';
         }

         function updateNotificationCount() {
             fetch('notification_ajax.php', {
                 method: 'POST',
                 headers: {
                     'Content-Type': 'application/x-www-form-urlencoded',
                 },
                 body: 'action=get_unread_count'
             })
             .then(response => response.json())
             .then(data => {
                 if (data.success) {
                     const badge = document.querySelector('.notification-badge');
                     if (badge) {
                         badge.textContent = data.count;
                         badge.style.display = data.count > 0 ? 'block' : 'none';
                     }
                 }
             })
             .catch(error => {
                 console.error('Error:', error);
             });
         }

        // Close modal when clicking outside
        document.getElementById('receiptModal').addEventListener('click', function(e) {
            if (e.target === this) {
                closeReceiptModal();
            }
        });

                 document.getElementById('lhdnModal').addEventListener('click', function(e) {
             if (e.target === this) {
                 closeLHDNModal();
             }
         });

         document.getElementById('notificationModal').addEventListener('click', function(e) {
             if (e.target === this) {
                 closeNotificationModal();
             }
         });

                 // Close modal with Escape key
         document.addEventListener('keydown', function(e) {
             if (e.key === 'Escape') {
                 const receiptModal = document.getElementById('receiptModal');
                 const lhdnModal = document.getElementById('lhdnModal');
                 const notificationModal = document.getElementById('notificationModal');
                 
                 if (receiptModal.classList.contains('modal-active')) {
                     closeReceiptModal();
                 } else if (lhdnModal.classList.contains('modal-active')) {
                     closeLHDNModal();
                 } else if (notificationModal.classList.contains('modal-active')) {
                     closeNotificationModal();
                 }
             }
         });

        // Add hover effects
        document.querySelectorAll('.purchase-card').forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-4px) scale(1.02)';
            });
            
            card.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0) scale(1)';
            });
        });
    </script>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<section class="page-hero">
    <div class="page-hero-bg" style="background-image:url('https://images.unsplash.com/photo-1599508704512-2f19efd1e35f?w=1920&q=80');"></div>
    <div class="page-hero-overlay"></div>
    <div class="page-hero-content">
        <p class="page-hero-eyebrow">&#9670; The Last Resort &#9670;</p>
        <h1 class="page-hero-title">Support</h1>
        <p class="page-hero-subtitle">We cannot send heroes to your aid. But we can answer your questions.</p>
    </div>
</section>

<!-- SUPPORT QUICK LINKS -->
<section style="background:var(--dark-surface); padding:3rem 2rem;">
    <div class="container">
        <div class="grid-4">
            <div class="card" style="padding:1.8rem; text-align:center; cursor:pointer;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#9877;</span>
                <h3 class="card-title mb-2" style="font-size:0.9rem;">Technical Issues</h3>
                <p class="card-text" style="font-size:0.85rem;">Crashes, performance, and platform-specific problems.</p>
            </div>
            <div class="card" style="padding:1.8rem; text-align:center; cursor:pointer;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#9820;</span>
                <h3 class="card-title mb-2" style="font-size:0.9rem;">Account &amp; Purchase</h3>
                <p class="card-text" style="font-size:0.85rem;">Billing, refunds, and account management questions.</p>
            </div>
            <div class="card" style="padding:1.8rem; text-align:center; cursor:pointer;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#128027;</span>
                <h3 class="card-title mb-2" style="font-size:0.9rem;">Bug Reports</h3>
                <p class="card-text" style="font-size:0.85rem;">Report in-game bugs, exploits, and unintended behaviors.</p>
            </div>
            <div class="card" style="padding:1.8rem; text-align:center; cursor:pointer;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#9988;</span>
                <h3 class="card-title mb-2" style="font-size:0.9rem;">Accessibility</h3>
                <p class="card-text" style="font-size:0.85rem;">Accessibility options, feedback, and accommodation requests.</p>
            </div>
        </div>
    </div>
</section>

<!-- FAQ ACCORDION -->
<section class="section section-dark">
    <div class="container">
        <div class="split-section">
            <div>
                <div class="split-tag">FAQ</div>
                <h2 class="split-title" style="margin-bottom:1.5rem;">Frequently Asked Questions</h2>
                <div class="support-accordion">

                    <div class="accordion-item">
                        <div class="accordion-header">
                            <span class="accordion-question">Is there a way to disable permadeath?</span>
                            <span class="accordion-icon">+</span>
                        </div>
                        <div class="accordion-body">
                            <p class="accordion-answer">
                                Yes. In version 2.9, we added a "Flame of Hope" mode which preserves hero progression
                                upon death rather than deleting them permanently. This mode is fully supported and does
                                not affect any achievements. It can be toggled in the Settings menu at any time.
                            </p>
                        </div>
                    </div>

                    <div class="accordion-item">
                        <div class="accordion-header">
                            <span class="accordion-question">How do I fix crashes on startup?</span>
                            <span class="accordion-icon">+</span>
                        </div>
                        <div class="accordion-body">
                            <p class="accordion-answer">
                                First, verify the integrity of game files through your platform's library manager.
                                If the issue persists, check that your graphics drivers are up to date.
                                For PC users, ensure DirectX 12 is installed. If none of these resolve the issue,
                                contact us through the form below with your system specifications and crash logs.
                            </p>
                        </div>
                    </div>

                    <div class="accordion-item">
                        <div class="accordion-header">
                            <span class="accordion-question">Does the game support cloud saves?</span>
                            <span class="accordion-icon">+</span>
                        </div>
                        <div class="accordion-body">
                            <p class="accordion-answer">
                                Yes. Cloud saves are supported on all platforms. Save data syncs automatically
                                when you close the game. You can also manually trigger a sync from the main menu.
                                Cross-platform save transfer (PC to Console) is in development and expected Q1 2025.
                            </p>
                        </div>
                    </div>

                    <div class="accordion-item">
                        <div class="accordion-header">
                            <span class="accordion-question">Can I mod the game?</span>
                            <span class="accordion-icon">+</span>
                        </div>
                        <div class="accordion-body">
                            <p class="accordion-answer">
                                The PC version fully supports mods through Steam Workshop. An official modding toolkit
                                is available free of charge and includes documentation for creating new dungeons,
                                enemies, trinkets, and hero classes. Console modding is not currently supported
                                but is under active consideration.
                            </p>
                        </div>
                    </div>

                    <div class="accordion-item">
                        <div class="accordion-header">
                            <span class="accordion-question">What is the refund policy?</span>
                            <span class="accordion-icon">+</span>
                        </div>
                        <div class="accordion-body">
                            <p class="accordion-answer">
                                Refund policies are handled by the platform you purchased through (Steam, Epic, PlayStation Store, etc.).
                                We support all platform-standard refund processes. If you believe you were charged incorrectly
                                or experienced a billing error, contact us directly through the form below.
                            </p>
                        </div>
                    </div>

                    <div class="accordion-item">
                        <div class="accordion-header">
                            <span class="accordion-question">Are there accessibility options?</span>
                            <span class="accordion-icon">+</span>
                        </div>
                        <div class="accordion-body">
                            <p class="accordion-answer">
                                Yes. We offer multiple colorblind modes (deuteranopia, protanopia, tritanopia),
                                adjustable text size (up to 200%), combat speed controls, and the Flame of Hope
                                permadeath option. We are actively developing additional options based on community feedback.
                                Please contact us if you require a specific accommodation not currently available.
                            </p>
                        </div>
                    </div>

                </div>
            </div>

            <!-- CONTACT FORM -->
            <div>
                <div class="split-tag">Direct Contact</div>
                <h2 class="split-title" style="margin-bottom:1.5rem;">Send a Message</h2>
                <div class="contact-form">
                    <form id="contactForm">
                        <div class="form-group">
                            <label class="form-label" for="name">Your Name</label>
                            <input type="text" id="name" class="form-control" placeholder="Enter your name" required>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="email">Email Address</label>
                            <input type="email" id="email" class="form-control" placeholder="your@email.com" required>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="category">Category</label>
                            <select id="category" class="form-control">
                                <option value="">Select a category...</option>
                                <option>Technical Issue</option>
                                <option>Bug Report</option>
                                <option>Account / Purchase</option>
                                <option>Accessibility</option>
                                <option>Creator Program</option>
                                <option>Press Inquiry</option>
                                <option>Other</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="platform">Platform</label>
                            <select id="platform" class="form-control">
                                <option value="">Select platform...</option>
                                <option>PC (Steam)</option>
                                <option>PC (Epic Games)</option>
                                <option>PlayStation 5</option>
                                <option>Xbox Series X/S</option>
                                <option>Nintendo Switch</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="message">Message</label>
                            <textarea id="message" class="form-control" placeholder="Describe your issue in as much detail as possible. The darkness is patient."></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary w-full" style="justify-content:center;">
                            &#9670; Submit to the Void
                        </button>
                    </form>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- SYSTEM REQUIREMENTS -->
<section class="section section-surface">
    <div class="container">
        <div class="section-header">
            <span class="section-eyebrow">PC Requirements</span>
            <h2 class="section-title">System Requirements</h2>
            <div class="section-divider"></div>
        </div>
        <div class="grid-2">
            <div class="card" style="padding:2rem;">
                <span class="card-tag" style="font-size:0.75rem; margin-bottom:1rem;">MINIMUM</span>
                <table style="width:100%; border-collapse:collapse;">
                    <tr style="border-bottom:1px solid var(--border-dark);">
                        <td style="padding:0.6rem 0; font-family:'Cinzel',serif; font-size:0.65rem; letter-spacing:0.1em; color:var(--mid-grey); width:40%;">OS</td>
                        <td style="padding:0.6rem 0; font-family:'Crimson Text',serif; color:var(--cream);">Windows 10 64-bit</td>
                    </tr>
                    <tr style="border-bottom:1px solid var(--border-dark);">
                        <td style="padding:0.6rem 0; font-family:'Cinzel',serif; font-size:0.65rem; letter-spacing:0.1em; color:var(--mid-grey);">CPU</td>
                        <td style="padding:0.6rem 0; font-family:'Crimson Text',serif; color:var(--cream);">Intel Core i5-6600 / AMD Ryzen 5 1600</td>
                    </tr>
                    <tr style="border-bottom:1px solid var(--border-dark);">
                        <td style="padding:0.6rem 0; font-family:'Cinzel',serif; font-size:0.65rem; letter-spacing:0.1em; color:var(--mid-grey);">RAM</td>
                        <td style="padding:0.6rem 0; font-family:'Crimson Text',serif; color:var(--cream);">8 GB RAM</td>
                    </tr>
                    <tr style="border-bottom:1px solid var(--border-dark);">
                        <td style="padding:0.6rem 0; font-family:'Cinzel',serif; font-size:0.65rem; letter-spacing:0.1em; color:var(--mid-grey);">GPU</td>
                        <td style="padding:0.6rem 0; font-family:'Crimson Text',serif; color:var(--cream);">NVIDIA GTX 1060 / AMD RX 580</td>
                    </tr>
                    <tr>
                        <td style="padding:0.6rem 0; font-family:'Cinzel',serif; font-size:0.65rem; letter-spacing:0.1em; color:var(--mid-grey);">Storage</td>
                        <td style="padding:0.6rem 0; font-family:'Crimson Text',serif; color:var(--cream);">12 GB available</td>
                    </tr>
                </table>
            </div>
            <div class="card" style="padding:2rem; border-color:var(--border-mid);">
                <span class="card-tag" style="font-size:0.75rem; margin-bottom:1rem; color:var(--gold);">RECOMMENDED</span>
                <table style="width:100%; border-collapse:collapse;">
                    <tr style="border-bottom:1px solid var(--border-dark);">
                        <td style="padding:0.6rem 0; font-family:'Cinzel',serif; font-size:0.65rem; letter-spacing:0.1em; color:var(--mid-grey); width:40%;">OS</td>
                        <td style="padding:0.6rem 0; font-family:'Crimson Text',serif; color:var(--cream);">Windows 11 64-bit</td>
                    </tr>
                    <tr style="border-bottom:1px solid var(--border-dark);">
                        <td style="padding:0.6rem 0; font-family:'Cinzel',serif; font-size:0.65rem; letter-spacing:0.1em; color:var(--mid-grey);">CPU</td>
                        <td style="padding:0.6rem 0; font-family:'Crimson Text',serif; color:var(--cream);">Intel Core i7-8700K / AMD Ryzen 7 3700X</td>
                    </tr>
                    <tr style="border-bottom:1px solid var(--border-dark);">
                        <td style="padding:0.6rem 0; font-family:'Cinzel',serif; font-size:0.65rem; letter-spacing:0.1em; color:var(--mid-grey);">RAM</td>
                        <td style="padding:0.6rem 0; font-family:'Crimson Text',serif; color:var(--cream);">16 GB RAM</td>
                    </tr>
                    <tr style="border-bottom:1px solid var(--border-dark);">
                        <td style="padding:0.6rem 0; font-family:'Cinzel',serif; font-size:0.65rem; letter-spacing:0.1em; color:var(--mid-grey);">GPU</td>
                        <td style="padding:0.6rem 0; font-family:'Crimson Text',serif; color:var(--cream);">NVIDIA RTX 3070 / AMD RX 6700 XT</td>
                    </tr>
                    <tr>
                        <td style="padding:0.6rem 0; font-family:'Cinzel',serif; font-size:0.65rem; letter-spacing:0.1em; color:var(--mid-grey);">Storage</td>
                        <td style="padding:0.6rem 0; font-family:'Crimson Text',serif; color:var(--cream);">20 GB SSD recommended</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</section>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>

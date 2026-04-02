<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- About Hero Section -->
    <section class="hero-section" style="padding: 80px 0;">
        <div class="hero-content">
            <h2>About Bokaro Clinic</h2>
            <p>Committed to Excellence in Healthcare Since Our Establishment</p>
        </div>
    </section>

    <!-- Our Story Section -->
    <section style="padding: 80px 0; background: white;">
        <div class="container">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(400px, 1fr)); gap: 60px; align-items: center;">

                <div>
                    <h2 style="color: var(--primary-color); font-size: 2.5em; margin-bottom: 20px;">Our Story</h2>
                    <p style="font-size: 1.15em; line-height: 1.8; color: #555; margin-bottom: 20px;">
                        Bokaro Clinic was established with a vision to provide accessible, affordable, and quality healthcare 
                        to the people of Bokaro and surrounding regions. What started as a small clinic has grown into a 
                        trusted healthcare institution serving thousands of patients.
                   
                    </p>
                    <p style="font-size: 1.15em; line-height: 1.8; color: #555; margin-bottom: 20px;">
                        Located in the heart of Bokaro, Jharkhand, we have been at the forefront of delivering comprehensive 
                        medical services. Our team of experienced doctors, nurses, and healthcare professionals work tirelessly 
                        to ensure every patient receives personalized attention and the best possible care.
                   
                    </p>
                    <p style="font-size: 1.15em; line-height: 1.8; color: #555;">
                        We believe in building lasting relationships with our patients based on trust, compassion, and 
                        medical excellence. Our state-of-the-art facilities combined with traditional care values make us 
                        the preferred choice for families across the region.
                   
                    </p>
                </div>

                <div style="background: linear-gradient(135deg, var(--primary-color), var(--secondary-color)); padding: 60px 40px; border-radius: 20px; color: blue; text-align: center;">
                    <div style="margin-bottom: 40px;">
                        <div style="font-size: 4em; font-weight: bold; margin-bottom: 10px;">15+</div>
                        <div style="font-size: 1.3em; opacity: 0.9;">Years of Experience</div>
                    </div>
                    <div style="margin-bottom: 40px;">
                        <div style="font-size: 4em; font-weight: bold; margin-bottom: 10px;">50,000+</div>
                        <div style="font-size: 1.3em; opacity: 0.9;">Patients Treated</div>
                    </div>
                    <div style="margin-bottom: 40px;">
                        <div style="font-size: 4em; font-weight: bold; margin-bottom: 10px;">15+</div>
                        <div style="font-size: 1.3em; opacity: 0.9;">Expert Doctors</div>
                    </div>
                    <div>
                        <div style="font-size: 4em; font-weight: bold; margin-bottom: 10px;">24/7</div>
                        <div style="font-size: 1.3em; opacity: 0.9;">Emergency Services</div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Mission & Vision Section -->
    <section style="padding: 80px 0; background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
        <div class="container">
            <h2 class="section-title">Our Mission & Vision</h2>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 40px; margin-top: 50px;">

                <!-- Mission -->
                <div style="background: white; padding: 40px; border-radius: 20px; box-shadow: var(--shadow); border-top: 5px solid var(--accent-color); position: relative;">
                    <div style="position: absolute; top: -30px; left: 40px; width: 60px; height: 60px; background: var(--accent-color); border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 2em; color: white; box-shadow: 0 4px 15px rgba(255, 107, 107, 0.4);">
                        🎯
                   
                    </div>
                    <h3 style="color: var(--primary-color); font-size: 2em; margin: 40px 0 20px 0;">Our Mission</h3>
                    <p style="font-size: 1.1em; line-height: 1.8; color: #555;">
                        To provide compassionate, patient-centered healthcare services of the highest quality. 
                        We strive to improve the health and well-being of our community through excellence in 
                        medical care, education, and innovation while maintaining affordability and accessibility 
                        for all.
                   
                    </p>
                </div>

                <!-- Vision -->
                <div style="background: white; padding: 40px; border-radius: 20px; box-shadow: var(--shadow); border-top: 5px solid var(--secondary-color); position: relative;">
                    <div style="position: absolute; top: -30px; left: 40px; width: 60px; height: 60px; background: var(--secondary-color); border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 2em; color: white; box-shadow: 0 4px 15px rgba(5, 168, 168, 0.4);">
                        👁️
                   
                    </div>
                    <h3 style="color: var(--primary-color); font-size: 2em; margin: 40px 0 20px 0;">Our Vision</h3>
                    <p style="font-size: 1.1em; line-height: 1.8; color: #555;">
                        To be the most trusted and preferred healthcare provider in Jharkhand, recognized for 
                        clinical excellence, advanced medical technology, and exceptional patient experience. 
                        We envision a healthier community where quality healthcare is a right, not a privilege.
                   
                    </p>
                </div>

            </div>
        </div>
    </section>

    <!-- Core Values Section -->
    <section style="padding: 80px 0; background: white;">
        <div class="container">
            <h2 class="section-title">Our Core Values</h2>
            <p class="section-subtitle">The principles that guide everything we do</p>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 35px; margin-top: 50px;">

                <div class="value-card">
                    <div class="value-icon">💙</div>
                    <h3>Compassion</h3>
                    <p>We treat every patient with empathy, respect, and dignity, understanding their unique needs and concerns.</p>
                </div>

                <div class="value-card">
                    <div class="value-icon">⭐</div>
                    <h3>Excellence</h3>
                    <p>We are committed to maintaining the highest standards of medical care and continuously improving our services.</p>
                </div>

                <div class="value-card">
                    <div class="value-icon">🤝</div>
                    <h3>Integrity</h3>
                    <p>We conduct our practice with honesty, transparency, and ethical principles in all our interactions.</p>
                </div>

                <div class="value-card">
                    <div class="value-icon">🌟</div>
                    <h3>Innovation</h3>
                    <p>We embrace modern medical technology and practices to provide cutting-edge healthcare solutions.</p>
                </div>

                <div class="value-card">
                    <div class="value-icon">👥</div>
                    <h3>Teamwork</h3>
                    <p>We work collaboratively across all departments to ensure coordinated and comprehensive patient care.</p>
                </div>

                <div class="value-card">
                    <div class="value-icon">🎓</div>
                    <h3>Education</h3>
                    <p>We believe in educating our patients and community about health, prevention, and wellness.</p>
                </div>

            </div>
        </div>
    </section>

    <!-- Our Team Section -->
    <section style="padding: 80px 0; background: #f8f9fa;">
        <div class="container">
            <h2 class="section-title">Meet Our Medical Team</h2>
            <p class="section-subtitle">Experienced healthcare professionals dedicated to your well-being</p>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 40px; margin-top: 50px;">

                <!-- Doctor 1 -->
                <div class="doctor-card">
                    <div class="doctor-image">👨‍⚕️</div>
                    <h3>Dr. Rajesh Sharma</h3>
                    <p class="doctor-specialty">General Physician</p>
                    <p class="doctor-qualification">MBBS, MD</p>
                    <p class="doctor-experience">15+ Years Experience</p>
                    <p class="doctor-bio">
                        Specializes in preventive medicine and chronic disease management. Known for patient-centered approach.
                   
                    </p>
                </div>

                <!-- Doctor 2 -->
                <div class="doctor-card">
                    <div class="doctor-image">👩‍⚕️</div>
                    <h3>Dr. Priya Gupta</h3>
                    <p class="doctor-specialty">Cardiologist</p>
                    <p class="doctor-qualification">MBBS, MD, DM Cardiology</p>
                    <p class="doctor-experience">12+ Years Experience</p>
                    <p class="doctor-bio">
                        Expert in cardiovascular diseases with focus on interventional cardiology and heart failure management.
                   
                    </p>
                </div>

                <!-- Doctor 3 -->
                <div class="doctor-card">
                    <div class="doctor-image">👨‍⚕️</div>
                    <h3>Dr. Amit Kumar</h3>
                    <p class="doctor-specialty">Pediatrician</p>
                    <p class="doctor-qualification">MBBS, MD Pediatrics</p>
                    <p class="doctor-experience">10+ Years Experience</p>
                    <p class="doctor-bio">
                        Passionate about child health and development. Experienced in neonatal care and childhood diseases.
                   
                    </p>
                </div>

                <!-- Doctor 4 -->
                <div class="doctor-card">
                    <div class="doctor-image">👩‍⚕️</div>
                    <h3>Dr. Neha Singh</h3>
                    <p class="doctor-specialty">Orthopedic Surgeon</p>
                    <p class="doctor-qualification">MBBS, MS Orthopedics</p>
                    <p class="doctor-experience">8+ Years Experience</p>
                    <p class="doctor-bio">
                        Specializes in joint replacement, trauma surgery, and sports injury management with excellent outcomes.
                   
                    </p>
                </div>

            </div>
        </div>
    </section>

    <!-- Facilities Section -->
    <section style="padding: 80px 0; background: white;">
        <div class="container">
            <h2 class="section-title">Our Facilities</h2>
            <p class="section-subtitle">Modern infrastructure and advanced medical equipment</p>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 30px; margin-top: 50px;">

                <div class="facility-item">
                    <span style="font-size: 3em; display: block; margin-bottom: 15px;">🏥</span>
                    <h3>Modern Infrastructure</h3>
                    <p>Spacious, clean, and well-maintained facility with patient comfort in mind</p>
                </div>

                <div class="facility-item">
                    <span style="font-size: 3em; display: block; margin-bottom: 15px;">🔬</span>
                    <h3>Advanced Lab</h3>
                    <p>State-of-the-art diagnostic laboratory with latest testing equipment</p>
                </div>

                <div class="facility-item">
                    <span style="font-size: 3em; display: block; margin-bottom: 15px;">📡</span>
                    <h3>Digital X-Ray</h3>
                    <p>High-quality digital radiography for accurate diagnostic imaging</p>
                </div>

                <div class="facility-item">
                    <span style="font-size: 3em; display: block; margin-bottom: 15px;">💊</span>
                    <h3>In-house Pharmacy</h3>
                    <p>Fully stocked pharmacy with all essential medicines and healthcare products</p>
                </div>

                <div class="facility-item">
                    <span style="font-size: 3em; display: block; margin-bottom: 15px;">🚑</span>
                    <h3>Ambulance Service</h3>
                    <p>24/7 ambulance service for emergency patient transportation</p>
                </div>

                <div class="facility-item">
                    <span style="font-size: 3em; display: block; margin-bottom: 15px;">🩺</span>
                    <h3>ICU Facility</h3>
                    <p>Intensive care unit with advanced monitoring and life support systems</p>
                </div>

            </div>
        </div>
    </section>

    <!-- Accreditations & Certifications -->
    <section style="padding: 80px 0; background: linear-gradient(135deg, var(--primary-color), var(--secondary-color)); color: white;">
        <div class="container">
            <h2 style="text-align: center; font-size: 2.8em; margin-bottom: 20px;">Accreditations & Certifications</h2>
            <p style="text-align: center; font-size: 1.2em; margin-bottom: 50px; opacity: 0.9;">
                Recognized for quality and excellence in healthcare delivery
           
            </p>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 40px; text-align: center;">

                <div>
                    <div style="font-size: 4em; margin-bottom: 15px;">🏆</div>
                    <h3 style="font-size: 1.3em; margin-bottom: 10px;">ISO Certified</h3>
                    <p style="opacity: 0.9;">Quality Management Standards</p>
                </div>

                <div>
                    <div style="font-size: 4em; margin-bottom: 15px;">✅</div>
                    <h3 style="font-size: 1.3em; margin-bottom: 10px;">NABH Accredited</h3>
                    <p style="opacity: 0.9;">Healthcare Quality Standards</p>
                </div>

                <div>
                    <div style="font-size: 4em; margin-bottom: 15px;">🎖️</div>
                    <h3 style="font-size: 1.3em; margin-bottom: 10px;">State Recognized</h3>
                    <p style="opacity: 0.9;">Jharkhand Health Department</p>
                </div>

                <div>
                    <div style="font-size: 4em; margin-bottom: 15px;">⭐</div>
                    <h3 style="font-size: 1.3em; margin-bottom: 10px;">Award Winner</h3>
                    <p style="opacity: 0.9;">Best Clinic in Region 2023</p>
                </div>

            </div>
        </div>
    </section>

    <!-- Call to Action -->
    <section style="padding: 80px 0; background: white; text-align: center;">
        <div class="container">
            <h2 style="color: var(--primary-color); font-size: 2.5em; margin-bottom: 20px;">Ready to Experience Quality Healthcare?
            </h2>
            <p style="font-size: 1.2em; color: #666; margin-bottom: 30px;">
                Join thousands of satisfied patients who trust us with their health
           
            </p>
            <a href="Appointments.aspx" class="btn-primary" style="margin-right: 20px;">Book an Appointment</a>
            <a href="Contact.aspx" class="btn-primary" style="background: var(--secondary-color);">Contact Us</a>
        </div>
    </section>

    <style>
        /* Value Cards */
        .value-card {
            background: white;
            padding: 40px 30px;
            border-radius: 15px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

            .value-card:hover {
                transform: translateY(-10px);
                box-shadow: var(--shadow-lg);
                border-color: var(--accent-color);
            }

        .value-icon {
            font-size: 3.5em;
            margin-bottom: 20px;
        }

        .value-card h3 {
            color: var(--primary-color);
            font-size: 1.6em;
            margin-bottom: 15px;
        }

        .value-card p {
            color: #666;
            line-height: 1.7;
            font-size: 1.05em;
        }

        /* Doctor Cards */
        .doctor-card {
            background: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: var(--shadow);
            text-align: center;
            transition: all 0.3s ease;
            border-top: 4px solid var(--primary-color);
        }

            .doctor-card:hover {
                transform: translateY(-10px);
                box-shadow: var(--shadow-lg);
            }

        .doctor-image {
            font-size: 5em;
            margin-bottom: 20px;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            width: 120px;
            height: 120px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            box-shadow: 0 4px 15px rgba(10, 115, 115, 0.3);
        }

        .doctor-card h3 {
            color: var(--primary-color);
            font-size: 1.6em;
            margin-bottom: 10px;
        }

        .doctor-specialty {
            color: var(--accent-color);
            font-weight: 600;
            font-size: 1.15em;
            margin-bottom: 8px;
        }

        .doctor-qualification {
            color: #666;
            font-size: 0.95em;
            margin-bottom: 5px;
        }

        .doctor-experience {
            color: var(--secondary-color);
            font-weight: 600;
            margin-bottom: 15px;
        }

        .doctor-bio {
            color: #555;
            line-height: 1.6;
            font-size: 0.95em;
        }

        /* Facility Items */
        .facility-item {
            background: #f8f9fa;
            padding: 35px 25px;
            border-radius: 15px;
            text-align: center;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

            .facility-item:hover {
                background: white;
                box-shadow: var(--shadow);
                border-color: var(--secondary-color);
                transform: scale(1.05);
            }

            .facility-item h3 {
                color: var(--primary-color);
                font-size: 1.3em;
                margin-bottom: 10px;
            }

            .facility-item p {
                color: #666;
                line-height: 1.6;
            }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .hero-section h2 {
                font-size: 2em;
            }

            .section-title {
                font-size: 2em;
            }

            .doctor-image {
                width: 100px;
                height: 100px;
                font-size: 4em;
            }
        }
    </style>
</asp:Content>


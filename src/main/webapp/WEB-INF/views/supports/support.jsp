<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<section class="page-hero">
    <div class="page-hero-bg"
        style="background-image:url('https://images.unsplash.com/photo-1599508704512-2f19efd1e35f?w=1920&q=80');"></div>
    <div class="page-hero-overlay"></div>

    <div class="page-hero-content">
        <p class="page-hero-eyebrow">&#9670; Nơi Nương Náu Cuối Cùng &#9670;</p>
        <h1 class="page-hero-title">Hỗ Trợ</h1>
        <p class="page-hero-subtitle">
            Chúng tôi không thể gửi anh hùng tới cứu ngươi.
            Nhưng chúng tôi có thể trả lời câu hỏi của ngươi.
        </p>
    </div>
</section>

<!-- SUPPORT QUICK LINKS -->
<section style="background:var(--dark-surface); padding:3rem 2rem;">
    <div class="container">

        <div class="grid-4">

            <div class="card" style="padding:1.8rem; text-align:center; cursor:pointer;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#9877;</span>

                <h3 class="card-title mb-2" style="font-size:0.9rem;">
                    Sự Cố Kỹ Thuật
                </h3>

                <p class="card-text" style="font-size:0.85rem;">
                    Crash game, hiệu năng, và các lỗi riêng theo từng nền tảng.
                </p>
            </div>

            <div class="card" style="padding:1.8rem; text-align:center; cursor:pointer;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#9820;</span>

                <h3 class="card-title mb-2" style="font-size:0.9rem;">
                    Tài Khoản &amp; Mua Hàng
                </h3>

                <p class="card-text" style="font-size:0.85rem;">
                    Thanh toán, hoàn tiền, và các vấn đề quản lý tài khoản.
                </p>
            </div>

            <div class="card" style="padding:1.8rem; text-align:center; cursor:pointer;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#128027;</span>

                <h3 class="card-title mb-2" style="font-size:0.9rem;">
                    Báo Cáo Lỗi
                </h3>

                <p class="card-text" style="font-size:0.85rem;">
                    Báo lỗi trong game, exploit, và các hành vi ngoài ý muốn.
                </p>
            </div>

            <div class="card" style="padding:1.8rem; text-align:center; cursor:pointer;">
                <span style="font-size:2rem; display:block; margin-bottom:0.8rem;">&#9988;</span>

                <h3 class="card-title mb-2" style="font-size:0.9rem;">
                    Khả Năng Tiếp Cận
                </h3>

                <p class="card-text" style="font-size:0.85rem;">
                    Tùy chọn hỗ trợ tiếp cận, phản hồi, và yêu cầu hỗ trợ đặc biệt.
                </p>
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

                <h2 class="split-title" style="margin-bottom:1.5rem;">
                    Câu Hỏi Thường Gặp
                </h2>
                
        <section class="support-accordion">
            <c:forEach items="${faqs}" var="faq">
                <div class="accordion-item">
                    <div class="accordion-header">
                        <span class="accordion-question">
                            ${faq.title}
                        </span>
                        <span class="accordion-icon">+</span>
                    </div>
                    <div class="accordion-body">
                        <p class="accordion-answer">
                            ${faq.content}
                        </p>
                    </div>
                </div>
            </c:forEach>
        </section>
            </div>
            <!-- CONTACT FORM -->
            <section>
                <div class="split-tag">Liên Hệ Trực Tiếp</div>
                <h2 class="split-title" style="margin-bottom:1.5rem;">
                    Gửi Tin Nhắn
                </h2>
                <div class="contact-form">
                    <c:if test="${not empty successMessage}">
                        <p class="form-message form-message-success">${successMessage}</p>
                    </c:if>

                    <c:if test="${not empty errorMessage}">
                        <p class="form-message form-message-error">${errorMessage}</p>
                    </c:if>

                    <form id="contactForm"
                        action="${pageContext.request.contextPath}/support"
                        method="post">
                        <input
                        type="hidden"
                        name="${_csrf.parameterName}"
                        value="${_csrf.token}" />
                        <div class="form-group">
                            <label class="form-label" for="name">Tên Của Ngươi</label>
                            <input type="text"
                                id="name"
                                name="visitorName"
                                class="form-control"
                                placeholder="Nhập tên của ngươi"
                                value="${contactRequest.visitorName}"
                                required>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="email">Địa Chỉ Email</label>
                            <input type="email"
                                id="email"
                                name="visitorEmail"
                                class="form-control"
                                placeholder="email@vungdat.com"
                                value="${contactRequest.visitorEmail}"
                                required>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="category">Danh Mục</label>
                            <select id="category"
                                name="category"
                                class="form-control"
                                required>
                                <option value="">Chọn danh mục...</option>
                                <c:forEach items="${categories}" var="category">
                                    <c:choose>
                                        <c:when test="${contactRequest.category eq category}">
                                            <option value="${category}" selected>
                                                ${category.displayName}
                                            </option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="${category}">
                                                ${category.displayName}
                                            </option>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="platform">Nền Tảng</label>
                            <select id="platform"
                                name="platform"
                                class="form-control"
                                required>
                                <option value="">Chọn nền tảng...</option>
                                <c:forEach items="${platforms}" var="platform">
                                    <c:choose>
                                        <c:when test="${contactRequest.platform eq platform}">
                                            <option value="${platform}" selected>
                                                ${platform.displayName}
                                            </option>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="${platform}">
                                                ${platform.displayName}
                                            </option>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="message">Tin Nhắn</label>
                            <textarea id="message"
                                name="message"
                                class="form-control"
                                placeholder="Hãy mô tả vấn đề của ngươi càng chi tiết càng tốt. Bóng tối luôn đủ kiên nhẫn để chờ đợi."
                                maxlength="5000"
                                required>${contactRequest.message}</textarea>
                        </div>
                        <button type="submit"
                            class="btn btn-primary w-full"
                            style="justify-content:center;">
                            &#9670; Gửi Vào Vực Thẳm
                        </button>
                    </form>
                </div>
            </section>
        </div>
    </div>
</section>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>

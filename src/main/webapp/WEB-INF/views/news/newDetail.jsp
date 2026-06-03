<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="/WEB-INF/views/layout/header.jsp" %>

        <section class="page-hero">
            <div class="page-hero-bg"
                style="background-image:url('https://images.unsplash.com/photo-1534447677768-be436bb09401?w=1920&q=80');">
            </div>
            <div class="page-hero-overlay"></div>
            <div class="page-hero-content">
                <h1 class="page-hero-title">Tin tức</h1>
                <p class="page-hero-subtitle">Cập nhật tình hình từ tiền tuyến khai phá. Đại nghiệp diễn tiến. Hắc ám
                    diên miên.</p>
            </div>
        </section>

        <section class="news-layout">
            <div class="news-left">
                <img class="card-img" src="https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=600&q=80"
                    alt="Dev Blog" loading="lazy">
                <div class="news-content">
                    <h2 class="news-category">Tiêu đề tin tức</h2>
                    <span class="news-date">Ngày đăng: 01/01/2024</span>
                </div>
                <h2
                    style="font-family:'Cormorant Garamond',serif; font-size:1.8rem; color:var(--cream); margin-bottom:1rem; line-height:1.3;">
                    Phiên Bản 3.0: Đại Bản Mở Rộng — Trầm Luân Chi Thành
                </h2>
                <div class="news-body">
                    <p>Nội dung chi tiết của tin tức...</p>
                </div>
                <div class="news-body">
                    <p>Nội dung chi tiết của tin tức...</p>
                </div>
            </div>
            <aside class="news-right">
                <c:forEach items="${articles}" var="article">

                <div class="card">

                    <img class="card-img"
                        src="${article.thumbnailUrl}"
                        alt="${article.title}"
                        loading="lazy">

                    <div class="card-body">

                        <span class="card-tag">
                            ${article.type}
                        </span>

                        <h3 class="card-title">
                            ${article.title}
                        </h3>

                        <p class="card-text">
                            ${article.summary}
                        </p>

                    </div>

                    <div class="card-footer">

                        <span class="font-Cormorant Garamond text-grey">
                            ${article.createdAt}
                        </span>

                        <a href="/news/${article.id}"
                        class="text-crimson font-Lora">
                            Đọc thêm →
                        </a>

                    </div>

                </div>

            </c:forEach>

            </aside>
        </section>


        <%@ include file="/WEB-INF/views/layout/footer.jsp" %>
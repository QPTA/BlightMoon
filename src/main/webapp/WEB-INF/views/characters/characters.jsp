<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="/WEB-INF/views/layout/header.jsp" %>

        <section class="page-hero">
            <div class="page-hero-bg"
                style="background-image:url('${pageContext.request.contextPath}/img/nhanvat-back.png');">
            </div>
            <div class="page-hero-overlay"></div>
            <div class="page-hero-content">
                <p class="page-hero-eyebrow">&#9670; Huyết Chiến Danh Lục &#9670;</p>
                <h1 class="page-hero-title">Nhân vật</h1>
                <p class="page-hero-subtitle">Mỗi anh hùng đều mang theo những thương tích — cả hữu hình lẫn ẩn sâu
                    trong tâm trí.
                    
                </p>
            </div>
        </section>

        <!-- INTRO -->
        <section style="background:var(--dark-surface); padding:3rem 2rem; text-align:center;">
            <div class="container-sm">
                <p class="font-im-fell" style="font-size:1.15rem; color:var(--mid-grey); line-height:1.9;">
    
                    Mỗi kẻ mang theo những kỹ năng riêng biệt cho cuộc viễn chinh bị nguyền rủa — và những cách thức
                    riêng để sụp đổ dưới áp lực.
                    
                    Ta là phật ác không còn nơi chốn, ta là ác phật làm gì được ta.
                </p>
            </div>
        </section>

        <!-- CHARACTERS GRID -->
        <section class="section section-dark">
            <div class="container">
                <div class="grid-4">
                    <c:forEach items="${characters}" var="character">
                        <div class="character-card">
                            <div class="character-card-image-wrapper">
                                <img class="character-card-img"
                                    src="${character.image}"
                                    alt="${character.name}"
                                    loading="lazy">

                                <div class="character-card-overlay"></div>
                            </div>

                            <div class="character-card-body">

                                <span class="character-class">
                                    ${character.race}
                                </span>

                                <h3 class="character-name">
                                    ${character.name}
                                </h3>

                                <p class="character-quote">
                                    "${character.quote}"
                                </p>

                                <!-- <a href="/characters/${character.id}"
                                class="character-btn">
                                    View Profile
                                </a> -->
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>

        <%@ include file="/WEB-INF/views/layout/footer.jsp" %>
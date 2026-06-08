package com.darkfantasy.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.darkfantasy.dto.faq.CreateFaqRequest;
import com.darkfantasy.dto.faq.FaqResponse;
import com.darkfantasy.dto.faq.UpdateFaqRequest;

public interface FaqService {
    FaqResponse getFaqById(Long id);

    FaqResponse createFaq(CreateFaqRequest request);

    FaqResponse updateFaq(UpdateFaqRequest request);

    void deleteFaq(Long id);

    void restoreFaq(Long id);

    Page<FaqResponse> getFaqs(Pageable pageable);

    List<FaqResponse> getFaqsDeletedFalse();

    long count();

}

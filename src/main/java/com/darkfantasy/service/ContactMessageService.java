package com.darkfantasy.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.darkfantasy.dto.contact.ContactMessageResponse;
import com.darkfantasy.dto.contact.CreateContactMessageRequest;

public interface ContactMessageService {
        ContactMessageResponse createMessage(CreateContactMessageRequest request);

        Page<ContactMessageResponse> getMessages(Pageable pageable);

        ContactMessageResponse getMessageById(Long id);

        void markAsProcessed(Long id);

        void markAsUnprocessed(Long id);

        long countByProcessedFalse();
}

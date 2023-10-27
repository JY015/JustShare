package com.js.web.join;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.mysql.cj.protocol.Message;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Component
public class SmsUtil {

    @Value("NCSMRHOCQOUIUHNU")
    private String apiKey;
    @Value("2PDEOV07LIF289CFZESDFZZZ0CPTZ9BG")
    private String apiSecretKey;

    private DefaultMessageService messageService;

    @PostConstruct
    private void init(){
        this.messageService = NurigoApp.INSTANCE.initialize(apiKey, apiSecretKey, "https://api.coolsms.co.kr");
    }
	
    // 단일 메시지 발송 예제
    public SingleMessageSentResponse sendOne(String to, int verificationCode) {
        Message message = new Message();
		// 발신번호 및 수신번호는 반드시 01012345678 형태로 입력되어야 합니다.
        message.setFrom("01085452943");
        message.setTo(to);
        message.setText("[Justshare] 아래의 인증번호를 입력해주세요\n" + verificationCode);

        SingleMessageSentResponse response = this.messageService.sendOne(new SingleMessageSendingRequest(message));
        return response;
    }
    
}

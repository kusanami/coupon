package com.coupon.restservice.client.meli;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author <a href="mailto:laura.acosta@payu.com">Laura Acosta</a>
 * @since 1.0.0
 */
@FeignClient(name = "meliClient", url = "${meli.url}")
public interface MeliFeignClient {

    @GetMapping


}

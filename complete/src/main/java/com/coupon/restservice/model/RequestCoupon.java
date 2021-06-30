package com.coupon.restservice.model;

import java.util.List;
import java.util.Set;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

/**
 * @author <a href="mailto:laura.acosta@payu.com">Laura Acosta</a>
 * @since 1.0.0
 */
@Getter
@Setter
@AllArgsConstructor
public class RequestCoupon {

    private Set<String> items;

    private Float amount;
}

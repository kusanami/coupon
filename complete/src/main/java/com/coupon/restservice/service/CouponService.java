package com.coupon.restservice.service;

import java.util.Set;

import com.coupon.restservice.model.RequestCoupon;

/**
 * @author <a href="mailto:laura.acosta@payu.com">Laura Acosta</a>
 * @since 1.0.0
 */
public interface CouponService {

    Set<String> getItemsFromCoupon(RequestCoupon requestCoupon);
}

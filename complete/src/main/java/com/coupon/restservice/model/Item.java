package com.coupon.restservice.model;

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
public class Item {

    private String id;

    private String title;

    private Float price;

}

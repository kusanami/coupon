package com.coupon.restservice.client.meli.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * @author <a href="mailto:laura.acosta@payu.com">Laura Acosta</a>
 * @since 1.0.0
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class InfoItemMeli {

    private String title;

    private String id;

    private Double price;
}

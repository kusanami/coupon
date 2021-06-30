package com.coupon.restservice.client.meli;

import java.util.Set;

import com.coupon.restservice.model.Item;

/**
 * @author <a href="mailto:laura.acosta@payu.com">Laura Acosta</a>
 * @since 1.0.0
 */
public interface MeliProvider {

    Set<Item> doQuery(Set<String> items);
}

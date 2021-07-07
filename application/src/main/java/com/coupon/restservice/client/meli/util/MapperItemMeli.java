package com.coupon.restservice.client.meli.util;

import com.coupon.restservice.client.meli.model.InfoItemMeli;
import com.coupon.restservice.client.meli.model.ItemMeli;
import com.coupon.restservice.model.Item;

/**
 * @author <a href="mailto:laura.acosta@payu.com">Laura Acosta</a>
 * @since 1.0.0
 */
public class MapperItemMeli {

    public static Item itemMeliMapperToItem(ItemMeli itemMeli) {

        InfoItemMeli infoItemMeli = itemMeli.getBody();
        return new Item(infoItemMeli.getId(), infoItemMeli.getTitle(), infoItemMeli.getPrice());
    }
}

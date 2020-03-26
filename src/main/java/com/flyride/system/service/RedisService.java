package com.flyride.system.service;

import java.util.Map;


public interface RedisService {

    // 加入元素
    void setValue(String key, Map<String, Object> value);
    // 加入元素
    void setValue(String key, String value);
    // 加入元素
    void setValue(String key, Object value);
    // 获取元素
    Object getMapValue(String key);
    // 获取元素
    Object getValue(String key);

}

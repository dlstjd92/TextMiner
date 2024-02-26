package com.smhrd.textminer.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
 
@Component
public interface TestMapper {
 
    @Select("select test from test")
    String selectSampleData(); 
    
    
    
    
}
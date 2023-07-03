package com.jaeseong.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
public class CommunityDTO {
    private int cmntyNo;
    private int customerNumber;
    private String cmntyTitle;
    private String cmntyContent;
    private String cmntyType;
    private LocalDateTime cmntyCreateDate;
    private Integer cmntyLike;
    private Integer cmntyView;
    private String contactFirstName;

}

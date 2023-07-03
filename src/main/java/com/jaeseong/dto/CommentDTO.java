package com.jaeseong.dto;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
public class CommentDTO {
    private int id;
    private String commentWriter;
    private String parent_writer;
    private String commentContents;
    private String productCode;
    private LocalDateTime commentCreatedTime;
    private int parent_id;
    private int childCommentCount;
    private String image;
    private String productName;
    private int starNo;
    private double avgStarNo;
    private String datePicker;

    }
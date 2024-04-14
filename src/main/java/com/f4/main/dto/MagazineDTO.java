package com.f4.main.dto;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@Setter
public class MagazineDTO {
    private int mnum;
    private String mtitle;
    private LocalDateTime reg_date;
    private String content;
    private String content2;
    private int readcount;
    private String mimage;
    private String mimage2;

    public LocalDate getReg_date() {
        return reg_date != null ? reg_date.toLocalDate() : LocalDate.now();
    }
}

// CREATE TABLE magazine (
//      mnum NUMBER PRIMARY KEY,
//      mtitle VARCHAR2(100),
//      reg_date TIMESTAMP DEFAULT LOCALTIMESTAMP,
//      content VARCHAR2(3000) NOT NULL,
//      content2 VARCHAR2(3000) NOT NULL,
//      readcount NUMBER DEFAULT 0,
//    mimage VARCHAR2(100),
//     mimage2 VARCHAR2(100)
//  );
//
//create sequence magazine_seq;
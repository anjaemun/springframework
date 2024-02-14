package com.semipro.travelinfo.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDto {
	private Long m_code;
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_email;
	private String m_phone;
}

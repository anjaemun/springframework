package com.semipro.travelinfo.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PlaceDto {
	private Long p_code;
	private String p_loc;
	private String p_name;
	private String p_detail;
}

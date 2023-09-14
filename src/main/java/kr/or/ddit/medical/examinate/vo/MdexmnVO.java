package kr.or.ddit.medical.examinate.vo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonFormat;

import kr.or.ddit.medical.vo.ReceptionVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 검진 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "mdexmnCode")
public class MdexmnVO {
	@NotBlank
	private String mdexmnCode;	//환자검진코드
	@NotBlank
	private String recCode;		//접수코드
	@NotBlank		
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private LocalDate mdexmnDate;	//검진일자 sysdate
	private String receiptDoc;		//예진표
	@NotBlank
	private String mDivision;       //검진구분
	
	private MdexmnRstltVO MdexmnRsVO;
	private ReceptionVO recep;
}

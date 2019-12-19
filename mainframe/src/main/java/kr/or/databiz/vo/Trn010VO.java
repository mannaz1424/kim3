package kr.or.databiz.vo;

import java.sql.Timestamp;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Trn010VO {
	private String		pcode				;
	private int         hideseq				;
	private Timestamp   trndate				;
	private Timestamp   sumdate				;
	private Timestamp   orderdate			;
	private String      custcode			;
	private String      custname			;
	private String      staffcode			;
	private String      trntype				;
	private String      repeat				;
	private int         taxrate				;
	private String      fractype			;
	private String      fracctrl			;
	private String      fee_free_kbn		;
	private int         subtotal			;
	private int         discount			;
	private int         fee					;
	private int         subtax				;
	private int         control				;
	private int         total				;
	private String      billflg				;
	private String      delivery			;
	private String      transferflg			;
	private Timestamp   recmade				;
	private Timestamp   recupdate			;
	private String      chk					;
	private String      chkstaff			;
	private Timestamp   chkdate				;
	private String      payment				;
	private String      goods				;
	private String      credit				;
	private int         frequency			;
	private int         paytotal			;
	private String      repaystt			;
	private String      repayend			;
	private String      kubun				;
	private int         discount_dsp		;
	private int         fee_dsp				;
	private int         subtax_dsp			;
	private String      downpayment			;
	private int         downpayment_mny		;
	private int         black_hideseq		;
	private int         connect_hideseq		;
	private String      note1				;
	private String      note2				;
	private String      note3				;
	private String      staffname			;
	private String      state_kbn			;
	private String      state_staffcode		;
	private Timestamp   state_day			;
	private String      state_reason		;
	private String      minus_den_kbn		;
	private String      reg_custcode		;
	private int         reg_eda				;
	private Timestamp   reg_sales_up_day	;
	private Timestamp   credit_submit_date	;
	private String      arrive_kbn			;
	private String      branchcode			;
	private String      teamcode			;
	private Timestamp   payment_limit		;
	private Timestamp   money_sdate			;
	private String      tel_kbn				;
	private String      corr_staffcode		;
	private String      cod_kbn				;
	private int         sale_cnt			;
}

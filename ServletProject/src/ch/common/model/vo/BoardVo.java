package ch.common.model.vo;

import java.sql.Date;

public class BoardVo {
	
//	----------------------- -------- -------------- 
//	 1 BOARD_NUM               NOT NULL NUMBER         
//	 2 BOARD_TITLE                      VARCHAR2(50)   
//	 3 BOARD_WRITER                     VARCHAR2(15)   
//	 4 BOARD_CONTENT                    VARCHAR2(2000) 
//	 5 BOARD_ORIGINAL_FILENAME          VARCHAR2(100)  
//	 6 BOARD_RENAME_FILENAME            VARCHAR2(100)  
//	 7 BOARD_DATE                       DATE           
//	 8 BOARD_LEVEL                      NUMBER         
//	 9 BOARD_REF                        NUMBER         
//	10 BOARD_REPLY_SEQ                  NUMBER         
//	11 BOARD_READCOUNT                  NUMBER   
	
	private int boardNum;
	private String boardTitle;
	private String boardWriter;
	private String boardContent;
	private String boardOriginalFilename;
	private String boardRenameFilename;
	private Date boardDate;
	private int boardLevel;
	private int boardRef;
	private int boardReplySeq;
	private int boardReadcount;
	
	public BoardVo() {
		super();
	}
	
	public BoardVo(int boardNum, String boardTitle, String boardWriter, String boardContent,
			String boardOriginalFilename, String boardRenameFilename, Date boardDate, int boardLevel, int boardRef,
			int boardReplySeq, int boardReadcount) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardWriter = boardWriter;
		this.boardContent = boardContent;
		this.boardOriginalFilename = boardOriginalFilename;
		this.boardRenameFilename = boardRenameFilename;
		this.boardDate = boardDate;
		this.boardLevel = boardLevel;
		this.boardRef = boardRef;
		this.boardReplySeq = boardReplySeq;
		this.boardReadcount = boardReadcount;
	}


	@Override
	public String toString() {
		return "BoardVo [boardNum=" + boardNum + ", boardTitle=" + boardTitle + ", boardWriter=" + boardWriter
				+ ", boardContent=" + boardContent + ", boardOriginalFilename=" + boardOriginalFilename
				+ ", boardRenameFilename=" + boardRenameFilename + ", boardDate=" + boardDate + ", boardLevel="
				+ boardLevel + ", boardRef=" + boardRef + ", boardReplySeq=" + boardReplySeq + ", boardReadcount="
				+ boardReadcount + "]";
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int i) {
		this.boardNum = i;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardOriginalFilename() {
		return boardOriginalFilename;
	}
	public void setBoardOriginalFilename(String boardOriginalFilename) {
		this.boardOriginalFilename = boardOriginalFilename;
	}
	public String getBoardRenameFilename() {
		return boardRenameFilename;
	}
	public void setBoardRenameFilename(String boardRenameFilename) {
		this.boardRenameFilename = boardRenameFilename;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date date) {
		this.boardDate = date;
	}
	public int getBoardLevel() {
		return boardLevel;
	}
	public void setBoardLevel(int i) {
		this.boardLevel = i;
	}
	public int getBoardRef() {
		return boardRef;
	}
	public void setBoardRef(int i) {
		this.boardRef = i;
	}
	public int getBoardReplySeq() {
		return boardReplySeq;
	}
	public void setBoardReplySeq(int i) {
		this.boardReplySeq = i;
	}
	public int getBoardReadcount() {
		return boardReadcount;
	}
	public void setBoardReadcount(int i) {
		this.boardReadcount = i;
	}
	
	
	
	

}

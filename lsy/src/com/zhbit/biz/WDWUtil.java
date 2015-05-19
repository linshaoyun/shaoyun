package com.zhbit.biz;

class WDWUtil  
{  
  
    /** 
     *  
     * @�������Ƿ���2003��excel������true��2003 
     *  
     * @���ߣ����� 
     *  
     * @ʱ�䣺2012-08-29 ����16:29:11 
     *  
     * @����@param filePath���ļ�����·�� 
     *  
     * @����@return 
     *  
     * @����ֵ��boolean 
     */  
  
    public static boolean isExcel2003(String filePath)  
    {  
  
        return filePath.matches("^.+\\.(?i)(xls)$");  
  
    }  
  
    /** 
     *  
     * @�������Ƿ���2007��excel������true��2007 
     *  
     * @���ߣ����� 
     *  
     * @ʱ�䣺2012-08-29 ����16:28:20 
     *  
     * @����@param filePath���ļ�����·�� 
     *  
     * @����@return 
     *  
     * @����ֵ��boolean 
     */  
  
    public static boolean isExcel2007(String filePath)  
    {  
  
        return filePath.matches("^.+\\.(?i)(xlsx)$");  
  
    }  
  
}  
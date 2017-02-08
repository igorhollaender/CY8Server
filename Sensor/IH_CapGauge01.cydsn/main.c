/*******************************************************************************
*
*  Project: IH_CapGauge01
*
*  m a i n . c 
*
*  Last revision:  170206 IH
*
********************************************************************************
*
*
* File Name: main.c
*
* Version: 1.20
*
* Description:
*  This example project demonstrates the basic operation of the SCB component
*  in the UART mode. The polling method is used to wait for received character.
*  As soon as character is received it is transmitted back. The serial terminal
*  can be used on the PC to send characters and get them back.
*  The example will echo every received character.
*
********************************************************************************
* Copyright 2014-2015, Cypress Semiconductor Corporation. All rights reserved.
* This software is owned by Cypress Semiconductor Corporation and is protected
* by and subject to worldwide patent and copyright laws and treaties.
* Therefore, you may use this software only as provided in the license agreement
* accompanying the software package from which you obtained this software.
* CYPRESS AND ITS SUPPLIERS MAKE NO WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
* WITH REGARD TO THIS SOFTWARE, INCLUDING, BUT NOT LIMITED TO, NONINFRINGEMENT,
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
*******************************************************************************/

#include <project.h>


/*******************************************************************************
* Function Name: main
********************************************************************************
* Summary:
*  The main function performs the following actions:
*   1. Sets up UART component.
*   2. UART sends text header into the serial terminal.
*   3. UART waits for the characters to send them back to the serial terminal.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
int main()
{
    uint32 ch;

    /* Start SCB (UART mode) operation */
    UART_Start();
    
    UART_UartPutString("\r\nThis is IH_CapGauge Ver.170206a\r\n");    

    for (;;)
    {
        /* Get received character or zero if nothing has been received yet */
        ch = UART_UartGetChar();

        if (0u != ch)
        {
          switch(ch)
          {
            case 'A':
                UART_UartPutString("Command A\r\n");    
                break;
            case 'B':
                UART_UartPutString("Command B\r\n");    
                break;
            default:                
                UART_UartPutString("Unknown command:");    
                UART_UartPutChar(ch);    
                UART_UartPutString("\r\n");    
                break;                
                
          }            
        }
    }
}


/* [] END OF FILE */

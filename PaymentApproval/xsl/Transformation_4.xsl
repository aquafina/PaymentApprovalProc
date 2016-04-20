<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../../../../../../Development%20Workspace/BPM/Paperless/PaymentApprovalProc/PaymentApproval/BP_SaveUserComments.wsdl"/>
      <rootElement name="task_1" namespace="http://xmlns.oracle.com/bpel/workflow/task"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../../../../../../Development%20Workspace/BPM/Paperless/PaymentApprovalProc/PaymentApproval/SaveComment.wsdl"/>
      <rootElement name="XxPaymentApprovalCommentsCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/SaveComment"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [THU APR 14 14:27:52 PKT 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/PaymentApprovalProcess/PaymentApproval/SaveComment"
                xmlns:client="http://xmlns.oracle.com/PaymentApprovalProcess/PaymentApproval/BP_SaveUserComments"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:top="http://xmlns.oracle.com/pcbpel/adapter/db/top/SaveComment"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ns1="http://xmlns.oracle.com/bpel/workflow/task"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl client plnk wsdl xsd ns1 tns top xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <top:XxPaymentApprovalCommentsCollection>
      <xsl:for-each select="/ns1:task_1/ns1:userComment">
        <top:XxPaymentApprovalComments>
          <top:commentId>
            <xsl:value-of select='oraext:sequence-next-val("xx_approval_comments_Seq","jdbc:oracle:thin:apps/mskiz145@192.168.0.80:1527:erptest")'/>
          </top:commentId>
          <top:commentText>
            <xsl:value-of select="ns1:comment"/>
          </top:commentText>
          <top:element1>
            <xsl:value-of select="../ns1:element1"/>
          </top:element1>
          <top:element2>
            <xsl:value-of select="../ns1:element2"/>
          </top:element2>
          <top:element10>
            <xsl:value-of select="../ns1:approver"/>
          </top:element10>
        </top:XxPaymentApprovalComments>
      </xsl:for-each>
    </top:XxPaymentApprovalCommentsCollection>
  </xsl:template>
</xsl:stylesheet>
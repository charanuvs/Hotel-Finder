﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18408
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace member_home.creditcardserv {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="creditcardserv.IService1")]
    public interface IService1 {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/cardVerify", ReplyAction="http://tempuri.org/IService1/cardVerifyResponse")]
        string cardVerify(string cardNo, string type);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/NewsFocus", ReplyAction="http://tempuri.org/IService1/NewsFocusResponse")]
        string[] NewsFocus(string topics);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IService1/CrimeData", ReplyAction="http://tempuri.org/IService1/CrimeDataResponse")]
        int CrimeData(string zip);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IService1Channel : member_home.creditcardserv.IService1, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class Service1Client : System.ServiceModel.ClientBase<member_home.creditcardserv.IService1>, member_home.creditcardserv.IService1 {
        
        public Service1Client() {
        }
        
        public Service1Client(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public Service1Client(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public Service1Client(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string cardVerify(string cardNo, string type) {
            return base.Channel.cardVerify(cardNo, type);
        }
        
        public string[] NewsFocus(string topics) {
            return base.Channel.NewsFocus(topics);
        }
        
        public int CrimeData(string zip) {
            return base.Channel.CrimeData(zip);
        }
    }
}

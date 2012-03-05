
/**
 * RealTimeCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.1  Built on : Aug 31, 2011 (12:22:40 CEST)
 */

    package ie.smartcommuter.service;

    /**
     *  RealTimeCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class RealTimeCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public RealTimeCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public RealTimeCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
           /**
            * auto generated Axis2 call back method for getJJKavanaghStationData method
            * override this method for handling normal response from getJJKavanaghStationData operation
            */
           public void receiveResultgetJJKavanaghStationData(
                    ie.smartcommuter.service.RealTimeStub.GetJJKavanaghStationDataResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getJJKavanaghStationData operation
           */
            public void receiveErrorgetJJKavanaghStationData(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getLuasStationData method
            * override this method for handling normal response from getLuasStationData operation
            */
           public void receiveResultgetLuasStationData(
                    ie.smartcommuter.service.RealTimeStub.GetLuasStationDataResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getLuasStationData operation
           */
            public void receiveErrorgetLuasStationData(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getBusEireannStationData method
            * override this method for handling normal response from getBusEireannStationData operation
            */
           public void receiveResultgetBusEireannStationData(
                    ie.smartcommuter.service.RealTimeStub.GetBusEireannStationDataResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getBusEireannStationData operation
           */
            public void receiveErrorgetBusEireannStationData(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getDublinBusStationData method
            * override this method for handling normal response from getDublinBusStationData operation
            */
           public void receiveResultgetDublinBusStationData(
                    ie.smartcommuter.service.RealTimeStub.GetDublinBusStationDataResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getDublinBusStationData operation
           */
            public void receiveErrorgetDublinBusStationData(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getIrishRailStationData method
            * override this method for handling normal response from getIrishRailStationData operation
            */
           public void receiveResultgetIrishRailStationData(
                    ie.smartcommuter.service.RealTimeStub.GetIrishRailStationDataResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getIrishRailStationData operation
           */
            public void receiveErrorgetIrishRailStationData(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getStationData method
            * override this method for handling normal response from getStationData operation
            */
           public void receiveResultgetStationData(
                    ie.smartcommuter.service.RealTimeStub.GetStationDataResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getStationData operation
           */
            public void receiveErrorgetStationData(java.lang.Exception e) {
            }
                


    }
    
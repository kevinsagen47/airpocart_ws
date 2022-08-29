// Auto-generated. Do not edit!

// (in-package teco_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class battery_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.PackageVoltage = null;
      this.PackageCurrent = null;
      this.SOHP = null;
      this.SOCP = null;
      this.AHCnow = null;
      this.AHCmax = null;
      this.CurrentSensorValue1 = null;
      this.CurrentSensorValue2 = null;
      this.TemperaturePack = null;
      this.CellTemperature1 = null;
      this.CellTemperature2 = null;
      this.CellTemperature3 = null;
      this.CellTemperature4 = null;
      this.CellTemperature5 = null;
      this.CellTemperature6 = null;
      this.CellTemperature7 = null;
      this.CellVoltage1 = null;
      this.CellVoltage2 = null;
      this.CellVoltage3 = null;
      this.CellVoltage4 = null;
      this.CellVoltage5 = null;
      this.CellVoltage6 = null;
      this.CellVoltage7 = null;
      this.CellSOC1 = null;
      this.CellSOC2 = null;
      this.CellSOC3 = null;
      this.CellSOC4 = null;
      this.CellSOC5 = null;
      this.CellSOC6 = null;
      this.CellSOC7 = null;
      this.CellSOH1 = null;
      this.CellSOH2 = null;
      this.CellSOH3 = null;
      this.CellSOH4 = null;
      this.CellSOH5 = null;
      this.CellSOH6 = null;
      this.CellSOH7 = null;
    }
    else {
      if (initObj.hasOwnProperty('PackageVoltage')) {
        this.PackageVoltage = initObj.PackageVoltage
      }
      else {
        this.PackageVoltage = 0.0;
      }
      if (initObj.hasOwnProperty('PackageCurrent')) {
        this.PackageCurrent = initObj.PackageCurrent
      }
      else {
        this.PackageCurrent = 0.0;
      }
      if (initObj.hasOwnProperty('SOHP')) {
        this.SOHP = initObj.SOHP
      }
      else {
        this.SOHP = 0.0;
      }
      if (initObj.hasOwnProperty('SOCP')) {
        this.SOCP = initObj.SOCP
      }
      else {
        this.SOCP = 0.0;
      }
      if (initObj.hasOwnProperty('AHCnow')) {
        this.AHCnow = initObj.AHCnow
      }
      else {
        this.AHCnow = 0.0;
      }
      if (initObj.hasOwnProperty('AHCmax')) {
        this.AHCmax = initObj.AHCmax
      }
      else {
        this.AHCmax = 0.0;
      }
      if (initObj.hasOwnProperty('CurrentSensorValue1')) {
        this.CurrentSensorValue1 = initObj.CurrentSensorValue1
      }
      else {
        this.CurrentSensorValue1 = 0.0;
      }
      if (initObj.hasOwnProperty('CurrentSensorValue2')) {
        this.CurrentSensorValue2 = initObj.CurrentSensorValue2
      }
      else {
        this.CurrentSensorValue2 = 0.0;
      }
      if (initObj.hasOwnProperty('TemperaturePack')) {
        this.TemperaturePack = initObj.TemperaturePack
      }
      else {
        this.TemperaturePack = 0.0;
      }
      if (initObj.hasOwnProperty('CellTemperature1')) {
        this.CellTemperature1 = initObj.CellTemperature1
      }
      else {
        this.CellTemperature1 = 0.0;
      }
      if (initObj.hasOwnProperty('CellTemperature2')) {
        this.CellTemperature2 = initObj.CellTemperature2
      }
      else {
        this.CellTemperature2 = 0.0;
      }
      if (initObj.hasOwnProperty('CellTemperature3')) {
        this.CellTemperature3 = initObj.CellTemperature3
      }
      else {
        this.CellTemperature3 = 0.0;
      }
      if (initObj.hasOwnProperty('CellTemperature4')) {
        this.CellTemperature4 = initObj.CellTemperature4
      }
      else {
        this.CellTemperature4 = 0.0;
      }
      if (initObj.hasOwnProperty('CellTemperature5')) {
        this.CellTemperature5 = initObj.CellTemperature5
      }
      else {
        this.CellTemperature5 = 0.0;
      }
      if (initObj.hasOwnProperty('CellTemperature6')) {
        this.CellTemperature6 = initObj.CellTemperature6
      }
      else {
        this.CellTemperature6 = 0.0;
      }
      if (initObj.hasOwnProperty('CellTemperature7')) {
        this.CellTemperature7 = initObj.CellTemperature7
      }
      else {
        this.CellTemperature7 = 0.0;
      }
      if (initObj.hasOwnProperty('CellVoltage1')) {
        this.CellVoltage1 = initObj.CellVoltage1
      }
      else {
        this.CellVoltage1 = 0.0;
      }
      if (initObj.hasOwnProperty('CellVoltage2')) {
        this.CellVoltage2 = initObj.CellVoltage2
      }
      else {
        this.CellVoltage2 = 0.0;
      }
      if (initObj.hasOwnProperty('CellVoltage3')) {
        this.CellVoltage3 = initObj.CellVoltage3
      }
      else {
        this.CellVoltage3 = 0.0;
      }
      if (initObj.hasOwnProperty('CellVoltage4')) {
        this.CellVoltage4 = initObj.CellVoltage4
      }
      else {
        this.CellVoltage4 = 0.0;
      }
      if (initObj.hasOwnProperty('CellVoltage5')) {
        this.CellVoltage5 = initObj.CellVoltage5
      }
      else {
        this.CellVoltage5 = 0.0;
      }
      if (initObj.hasOwnProperty('CellVoltage6')) {
        this.CellVoltage6 = initObj.CellVoltage6
      }
      else {
        this.CellVoltage6 = 0.0;
      }
      if (initObj.hasOwnProperty('CellVoltage7')) {
        this.CellVoltage7 = initObj.CellVoltage7
      }
      else {
        this.CellVoltage7 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOC1')) {
        this.CellSOC1 = initObj.CellSOC1
      }
      else {
        this.CellSOC1 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOC2')) {
        this.CellSOC2 = initObj.CellSOC2
      }
      else {
        this.CellSOC2 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOC3')) {
        this.CellSOC3 = initObj.CellSOC3
      }
      else {
        this.CellSOC3 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOC4')) {
        this.CellSOC4 = initObj.CellSOC4
      }
      else {
        this.CellSOC4 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOC5')) {
        this.CellSOC5 = initObj.CellSOC5
      }
      else {
        this.CellSOC5 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOC6')) {
        this.CellSOC6 = initObj.CellSOC6
      }
      else {
        this.CellSOC6 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOC7')) {
        this.CellSOC7 = initObj.CellSOC7
      }
      else {
        this.CellSOC7 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOH1')) {
        this.CellSOH1 = initObj.CellSOH1
      }
      else {
        this.CellSOH1 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOH2')) {
        this.CellSOH2 = initObj.CellSOH2
      }
      else {
        this.CellSOH2 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOH3')) {
        this.CellSOH3 = initObj.CellSOH3
      }
      else {
        this.CellSOH3 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOH4')) {
        this.CellSOH4 = initObj.CellSOH4
      }
      else {
        this.CellSOH4 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOH5')) {
        this.CellSOH5 = initObj.CellSOH5
      }
      else {
        this.CellSOH5 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOH6')) {
        this.CellSOH6 = initObj.CellSOH6
      }
      else {
        this.CellSOH6 = 0.0;
      }
      if (initObj.hasOwnProperty('CellSOH7')) {
        this.CellSOH7 = initObj.CellSOH7
      }
      else {
        this.CellSOH7 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type battery_msgs
    // Serialize message field [PackageVoltage]
    bufferOffset = _serializer.float32(obj.PackageVoltage, buffer, bufferOffset);
    // Serialize message field [PackageCurrent]
    bufferOffset = _serializer.float32(obj.PackageCurrent, buffer, bufferOffset);
    // Serialize message field [SOHP]
    bufferOffset = _serializer.float32(obj.SOHP, buffer, bufferOffset);
    // Serialize message field [SOCP]
    bufferOffset = _serializer.float32(obj.SOCP, buffer, bufferOffset);
    // Serialize message field [AHCnow]
    bufferOffset = _serializer.float32(obj.AHCnow, buffer, bufferOffset);
    // Serialize message field [AHCmax]
    bufferOffset = _serializer.float32(obj.AHCmax, buffer, bufferOffset);
    // Serialize message field [CurrentSensorValue1]
    bufferOffset = _serializer.float32(obj.CurrentSensorValue1, buffer, bufferOffset);
    // Serialize message field [CurrentSensorValue2]
    bufferOffset = _serializer.float32(obj.CurrentSensorValue2, buffer, bufferOffset);
    // Serialize message field [TemperaturePack]
    bufferOffset = _serializer.float32(obj.TemperaturePack, buffer, bufferOffset);
    // Serialize message field [CellTemperature1]
    bufferOffset = _serializer.float32(obj.CellTemperature1, buffer, bufferOffset);
    // Serialize message field [CellTemperature2]
    bufferOffset = _serializer.float32(obj.CellTemperature2, buffer, bufferOffset);
    // Serialize message field [CellTemperature3]
    bufferOffset = _serializer.float32(obj.CellTemperature3, buffer, bufferOffset);
    // Serialize message field [CellTemperature4]
    bufferOffset = _serializer.float32(obj.CellTemperature4, buffer, bufferOffset);
    // Serialize message field [CellTemperature5]
    bufferOffset = _serializer.float32(obj.CellTemperature5, buffer, bufferOffset);
    // Serialize message field [CellTemperature6]
    bufferOffset = _serializer.float32(obj.CellTemperature6, buffer, bufferOffset);
    // Serialize message field [CellTemperature7]
    bufferOffset = _serializer.float32(obj.CellTemperature7, buffer, bufferOffset);
    // Serialize message field [CellVoltage1]
    bufferOffset = _serializer.float32(obj.CellVoltage1, buffer, bufferOffset);
    // Serialize message field [CellVoltage2]
    bufferOffset = _serializer.float32(obj.CellVoltage2, buffer, bufferOffset);
    // Serialize message field [CellVoltage3]
    bufferOffset = _serializer.float32(obj.CellVoltage3, buffer, bufferOffset);
    // Serialize message field [CellVoltage4]
    bufferOffset = _serializer.float32(obj.CellVoltage4, buffer, bufferOffset);
    // Serialize message field [CellVoltage5]
    bufferOffset = _serializer.float32(obj.CellVoltage5, buffer, bufferOffset);
    // Serialize message field [CellVoltage6]
    bufferOffset = _serializer.float32(obj.CellVoltage6, buffer, bufferOffset);
    // Serialize message field [CellVoltage7]
    bufferOffset = _serializer.float32(obj.CellVoltage7, buffer, bufferOffset);
    // Serialize message field [CellSOC1]
    bufferOffset = _serializer.float32(obj.CellSOC1, buffer, bufferOffset);
    // Serialize message field [CellSOC2]
    bufferOffset = _serializer.float32(obj.CellSOC2, buffer, bufferOffset);
    // Serialize message field [CellSOC3]
    bufferOffset = _serializer.float32(obj.CellSOC3, buffer, bufferOffset);
    // Serialize message field [CellSOC4]
    bufferOffset = _serializer.float32(obj.CellSOC4, buffer, bufferOffset);
    // Serialize message field [CellSOC5]
    bufferOffset = _serializer.float32(obj.CellSOC5, buffer, bufferOffset);
    // Serialize message field [CellSOC6]
    bufferOffset = _serializer.float32(obj.CellSOC6, buffer, bufferOffset);
    // Serialize message field [CellSOC7]
    bufferOffset = _serializer.float32(obj.CellSOC7, buffer, bufferOffset);
    // Serialize message field [CellSOH1]
    bufferOffset = _serializer.float32(obj.CellSOH1, buffer, bufferOffset);
    // Serialize message field [CellSOH2]
    bufferOffset = _serializer.float32(obj.CellSOH2, buffer, bufferOffset);
    // Serialize message field [CellSOH3]
    bufferOffset = _serializer.float32(obj.CellSOH3, buffer, bufferOffset);
    // Serialize message field [CellSOH4]
    bufferOffset = _serializer.float32(obj.CellSOH4, buffer, bufferOffset);
    // Serialize message field [CellSOH5]
    bufferOffset = _serializer.float32(obj.CellSOH5, buffer, bufferOffset);
    // Serialize message field [CellSOH6]
    bufferOffset = _serializer.float32(obj.CellSOH6, buffer, bufferOffset);
    // Serialize message field [CellSOH7]
    bufferOffset = _serializer.float32(obj.CellSOH7, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type battery_msgs
    let len;
    let data = new battery_msgs(null);
    // Deserialize message field [PackageVoltage]
    data.PackageVoltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [PackageCurrent]
    data.PackageCurrent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [SOHP]
    data.SOHP = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [SOCP]
    data.SOCP = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AHCnow]
    data.AHCnow = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AHCmax]
    data.AHCmax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CurrentSensorValue1]
    data.CurrentSensorValue1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CurrentSensorValue2]
    data.CurrentSensorValue2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TemperaturePack]
    data.TemperaturePack = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellTemperature1]
    data.CellTemperature1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellTemperature2]
    data.CellTemperature2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellTemperature3]
    data.CellTemperature3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellTemperature4]
    data.CellTemperature4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellTemperature5]
    data.CellTemperature5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellTemperature6]
    data.CellTemperature6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellTemperature7]
    data.CellTemperature7 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellVoltage1]
    data.CellVoltage1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellVoltage2]
    data.CellVoltage2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellVoltage3]
    data.CellVoltage3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellVoltage4]
    data.CellVoltage4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellVoltage5]
    data.CellVoltage5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellVoltage6]
    data.CellVoltage6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellVoltage7]
    data.CellVoltage7 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOC1]
    data.CellSOC1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOC2]
    data.CellSOC2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOC3]
    data.CellSOC3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOC4]
    data.CellSOC4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOC5]
    data.CellSOC5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOC6]
    data.CellSOC6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOC7]
    data.CellSOC7 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOH1]
    data.CellSOH1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOH2]
    data.CellSOH2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOH3]
    data.CellSOH3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOH4]
    data.CellSOH4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOH5]
    data.CellSOH5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOH6]
    data.CellSOH6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CellSOH7]
    data.CellSOH7 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 148;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teco_msgs/battery_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f76442e7ca355905447f2ebc796d5598';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 PackageVoltage
    float32 PackageCurrent
    
    float32 SOHP
    float32 SOCP
    float32 AHCnow
    float32 AHCmax
    
    float32 CurrentSensorValue1
    float32 CurrentSensorValue2
    
    float32 TemperaturePack
    
    float32 CellTemperature1
    float32 CellTemperature2
    float32 CellTemperature3
    float32 CellTemperature4
    
    float32 CellTemperature5
    float32 CellTemperature6
    float32 CellTemperature7
    
    float32 CellVoltage1
    float32 CellVoltage2
    float32 CellVoltage3
    float32 CellVoltage4
    
    float32 CellVoltage5
    float32 CellVoltage6
    float32 CellVoltage7
    
    float32 CellSOC1
    float32 CellSOC2
    float32 CellSOC3
    float32 CellSOC4
    
    float32 CellSOC5
    float32 CellSOC6
    float32 CellSOC7
    
    float32 CellSOH1
    float32 CellSOH2
    float32 CellSOH3
    float32 CellSOH4
    
    float32 CellSOH5
    float32 CellSOH6
    float32 CellSOH7
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new battery_msgs(null);
    if (msg.PackageVoltage !== undefined) {
      resolved.PackageVoltage = msg.PackageVoltage;
    }
    else {
      resolved.PackageVoltage = 0.0
    }

    if (msg.PackageCurrent !== undefined) {
      resolved.PackageCurrent = msg.PackageCurrent;
    }
    else {
      resolved.PackageCurrent = 0.0
    }

    if (msg.SOHP !== undefined) {
      resolved.SOHP = msg.SOHP;
    }
    else {
      resolved.SOHP = 0.0
    }

    if (msg.SOCP !== undefined) {
      resolved.SOCP = msg.SOCP;
    }
    else {
      resolved.SOCP = 0.0
    }

    if (msg.AHCnow !== undefined) {
      resolved.AHCnow = msg.AHCnow;
    }
    else {
      resolved.AHCnow = 0.0
    }

    if (msg.AHCmax !== undefined) {
      resolved.AHCmax = msg.AHCmax;
    }
    else {
      resolved.AHCmax = 0.0
    }

    if (msg.CurrentSensorValue1 !== undefined) {
      resolved.CurrentSensorValue1 = msg.CurrentSensorValue1;
    }
    else {
      resolved.CurrentSensorValue1 = 0.0
    }

    if (msg.CurrentSensorValue2 !== undefined) {
      resolved.CurrentSensorValue2 = msg.CurrentSensorValue2;
    }
    else {
      resolved.CurrentSensorValue2 = 0.0
    }

    if (msg.TemperaturePack !== undefined) {
      resolved.TemperaturePack = msg.TemperaturePack;
    }
    else {
      resolved.TemperaturePack = 0.0
    }

    if (msg.CellTemperature1 !== undefined) {
      resolved.CellTemperature1 = msg.CellTemperature1;
    }
    else {
      resolved.CellTemperature1 = 0.0
    }

    if (msg.CellTemperature2 !== undefined) {
      resolved.CellTemperature2 = msg.CellTemperature2;
    }
    else {
      resolved.CellTemperature2 = 0.0
    }

    if (msg.CellTemperature3 !== undefined) {
      resolved.CellTemperature3 = msg.CellTemperature3;
    }
    else {
      resolved.CellTemperature3 = 0.0
    }

    if (msg.CellTemperature4 !== undefined) {
      resolved.CellTemperature4 = msg.CellTemperature4;
    }
    else {
      resolved.CellTemperature4 = 0.0
    }

    if (msg.CellTemperature5 !== undefined) {
      resolved.CellTemperature5 = msg.CellTemperature5;
    }
    else {
      resolved.CellTemperature5 = 0.0
    }

    if (msg.CellTemperature6 !== undefined) {
      resolved.CellTemperature6 = msg.CellTemperature6;
    }
    else {
      resolved.CellTemperature6 = 0.0
    }

    if (msg.CellTemperature7 !== undefined) {
      resolved.CellTemperature7 = msg.CellTemperature7;
    }
    else {
      resolved.CellTemperature7 = 0.0
    }

    if (msg.CellVoltage1 !== undefined) {
      resolved.CellVoltage1 = msg.CellVoltage1;
    }
    else {
      resolved.CellVoltage1 = 0.0
    }

    if (msg.CellVoltage2 !== undefined) {
      resolved.CellVoltage2 = msg.CellVoltage2;
    }
    else {
      resolved.CellVoltage2 = 0.0
    }

    if (msg.CellVoltage3 !== undefined) {
      resolved.CellVoltage3 = msg.CellVoltage3;
    }
    else {
      resolved.CellVoltage3 = 0.0
    }

    if (msg.CellVoltage4 !== undefined) {
      resolved.CellVoltage4 = msg.CellVoltage4;
    }
    else {
      resolved.CellVoltage4 = 0.0
    }

    if (msg.CellVoltage5 !== undefined) {
      resolved.CellVoltage5 = msg.CellVoltage5;
    }
    else {
      resolved.CellVoltage5 = 0.0
    }

    if (msg.CellVoltage6 !== undefined) {
      resolved.CellVoltage6 = msg.CellVoltage6;
    }
    else {
      resolved.CellVoltage6 = 0.0
    }

    if (msg.CellVoltage7 !== undefined) {
      resolved.CellVoltage7 = msg.CellVoltage7;
    }
    else {
      resolved.CellVoltage7 = 0.0
    }

    if (msg.CellSOC1 !== undefined) {
      resolved.CellSOC1 = msg.CellSOC1;
    }
    else {
      resolved.CellSOC1 = 0.0
    }

    if (msg.CellSOC2 !== undefined) {
      resolved.CellSOC2 = msg.CellSOC2;
    }
    else {
      resolved.CellSOC2 = 0.0
    }

    if (msg.CellSOC3 !== undefined) {
      resolved.CellSOC3 = msg.CellSOC3;
    }
    else {
      resolved.CellSOC3 = 0.0
    }

    if (msg.CellSOC4 !== undefined) {
      resolved.CellSOC4 = msg.CellSOC4;
    }
    else {
      resolved.CellSOC4 = 0.0
    }

    if (msg.CellSOC5 !== undefined) {
      resolved.CellSOC5 = msg.CellSOC5;
    }
    else {
      resolved.CellSOC5 = 0.0
    }

    if (msg.CellSOC6 !== undefined) {
      resolved.CellSOC6 = msg.CellSOC6;
    }
    else {
      resolved.CellSOC6 = 0.0
    }

    if (msg.CellSOC7 !== undefined) {
      resolved.CellSOC7 = msg.CellSOC7;
    }
    else {
      resolved.CellSOC7 = 0.0
    }

    if (msg.CellSOH1 !== undefined) {
      resolved.CellSOH1 = msg.CellSOH1;
    }
    else {
      resolved.CellSOH1 = 0.0
    }

    if (msg.CellSOH2 !== undefined) {
      resolved.CellSOH2 = msg.CellSOH2;
    }
    else {
      resolved.CellSOH2 = 0.0
    }

    if (msg.CellSOH3 !== undefined) {
      resolved.CellSOH3 = msg.CellSOH3;
    }
    else {
      resolved.CellSOH3 = 0.0
    }

    if (msg.CellSOH4 !== undefined) {
      resolved.CellSOH4 = msg.CellSOH4;
    }
    else {
      resolved.CellSOH4 = 0.0
    }

    if (msg.CellSOH5 !== undefined) {
      resolved.CellSOH5 = msg.CellSOH5;
    }
    else {
      resolved.CellSOH5 = 0.0
    }

    if (msg.CellSOH6 !== undefined) {
      resolved.CellSOH6 = msg.CellSOH6;
    }
    else {
      resolved.CellSOH6 = 0.0
    }

    if (msg.CellSOH7 !== undefined) {
      resolved.CellSOH7 = msg.CellSOH7;
    }
    else {
      resolved.CellSOH7 = 0.0
    }

    return resolved;
    }
};

module.exports = battery_msgs;

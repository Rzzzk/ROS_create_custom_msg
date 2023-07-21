// Auto-generated. Do not edit!

// (in-package custom_msg_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class age {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.year = null;
      this.month = null;
      this.day = null;
    }
    else {
      if (initObj.hasOwnProperty('year')) {
        this.year = initObj.year
      }
      else {
        this.year = 0;
      }
      if (initObj.hasOwnProperty('month')) {
        this.month = initObj.month
      }
      else {
        this.month = 0;
      }
      if (initObj.hasOwnProperty('day')) {
        this.day = initObj.day
      }
      else {
        this.day = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type age
    // Serialize message field [year]
    bufferOffset = _serializer.int8(obj.year, buffer, bufferOffset);
    // Serialize message field [month]
    bufferOffset = _serializer.int8(obj.month, buffer, bufferOffset);
    // Serialize message field [day]
    bufferOffset = _serializer.int8(obj.day, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type age
    let len;
    let data = new age(null);
    // Deserialize message field [year]
    data.year = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [month]
    data.month = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [day]
    data.day = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msg_pkg/age';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b467db0ba69e6a9712f4aa2325c633b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 year
    int8 month
    int8 day
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new age(null);
    if (msg.year !== undefined) {
      resolved.year = msg.year;
    }
    else {
      resolved.year = 0
    }

    if (msg.month !== undefined) {
      resolved.month = msg.month;
    }
    else {
      resolved.month = 0
    }

    if (msg.day !== undefined) {
      resolved.day = msg.day;
    }
    else {
      resolved.day = 0
    }

    return resolved;
    }
};

module.exports = age;

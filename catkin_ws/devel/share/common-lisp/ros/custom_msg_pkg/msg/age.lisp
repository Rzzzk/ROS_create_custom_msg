; Auto-generated. Do not edit!


(cl:in-package custom_msg_pkg-msg)


;//! \htmlinclude age.msg.html

(cl:defclass <age> (roslisp-msg-protocol:ros-message)
  ((year
    :reader year
    :initarg :year
    :type cl:fixnum
    :initform 0)
   (month
    :reader month
    :initarg :month
    :type cl:fixnum
    :initform 0)
   (day
    :reader day
    :initarg :day
    :type cl:fixnum
    :initform 0))
)

(cl:defclass age (<age>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <age>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'age)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msg_pkg-msg:<age> is deprecated: use custom_msg_pkg-msg:age instead.")))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <age>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msg_pkg-msg:year-val is deprecated.  Use custom_msg_pkg-msg:year instead.")
  (year m))

(cl:ensure-generic-function 'month-val :lambda-list '(m))
(cl:defmethod month-val ((m <age>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msg_pkg-msg:month-val is deprecated.  Use custom_msg_pkg-msg:month instead.")
  (month m))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <age>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msg_pkg-msg:day-val is deprecated.  Use custom_msg_pkg-msg:day instead.")
  (day m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <age>) ostream)
  "Serializes a message object of type '<age>"
  (cl:let* ((signed (cl:slot-value msg 'year)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'month)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'day)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <age>) istream)
  "Deserializes a message object of type '<age>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'year) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'month) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'day) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<age>)))
  "Returns string type for a message object of type '<age>"
  "custom_msg_pkg/age")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'age)))
  "Returns string type for a message object of type 'age"
  "custom_msg_pkg/age")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<age>)))
  "Returns md5sum for a message object of type '<age>"
  "b467db0ba69e6a9712f4aa2325c633b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'age)))
  "Returns md5sum for a message object of type 'age"
  "b467db0ba69e6a9712f4aa2325c633b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<age>)))
  "Returns full string definition for message of type '<age>"
  (cl:format cl:nil "int8 year~%int8 month~%int8 day~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'age)))
  "Returns full string definition for message of type 'age"
  (cl:format cl:nil "int8 year~%int8 month~%int8 day~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <age>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <age>))
  "Converts a ROS message object to a list"
  (cl:list 'age
    (cl:cons ':year (year msg))
    (cl:cons ':month (month msg))
    (cl:cons ':day (day msg))
))

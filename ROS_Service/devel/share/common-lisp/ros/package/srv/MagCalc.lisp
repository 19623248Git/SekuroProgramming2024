; Auto-generated. Do not edit!


(cl:in-package package-srv)


;//! \htmlinclude MagCalc-request.msg.html

(cl:defclass <MagCalc-request> (roslisp-msg-protocol:ros-message)
  ((komponenX
    :reader komponenX
    :initarg :komponenX
    :type cl:float
    :initform 0.0)
   (komponenY
    :reader komponenY
    :initarg :komponenY
    :type cl:float
    :initform 0.0)
   (komponenZ
    :reader komponenZ
    :initarg :komponenZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass MagCalc-request (<MagCalc-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagCalc-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagCalc-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name package-srv:<MagCalc-request> is deprecated: use package-srv:MagCalc-request instead.")))

(cl:ensure-generic-function 'komponenX-val :lambda-list '(m))
(cl:defmethod komponenX-val ((m <MagCalc-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package-srv:komponenX-val is deprecated.  Use package-srv:komponenX instead.")
  (komponenX m))

(cl:ensure-generic-function 'komponenY-val :lambda-list '(m))
(cl:defmethod komponenY-val ((m <MagCalc-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package-srv:komponenY-val is deprecated.  Use package-srv:komponenY instead.")
  (komponenY m))

(cl:ensure-generic-function 'komponenZ-val :lambda-list '(m))
(cl:defmethod komponenZ-val ((m <MagCalc-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package-srv:komponenZ-val is deprecated.  Use package-srv:komponenZ instead.")
  (komponenZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagCalc-request>) ostream)
  "Serializes a message object of type '<MagCalc-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagCalc-request>) istream)
  "Deserializes a message object of type '<MagCalc-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenZ) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagCalc-request>)))
  "Returns string type for a service object of type '<MagCalc-request>"
  "package/MagCalcRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagCalc-request)))
  "Returns string type for a service object of type 'MagCalc-request"
  "package/MagCalcRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagCalc-request>)))
  "Returns md5sum for a message object of type '<MagCalc-request>"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagCalc-request)))
  "Returns md5sum for a message object of type 'MagCalc-request"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagCalc-request>)))
  "Returns full string definition for message of type '<MagCalc-request>"
  (cl:format cl:nil "float64 komponenX~%float64 komponenY~%float64 komponenZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagCalc-request)))
  "Returns full string definition for message of type 'MagCalc-request"
  (cl:format cl:nil "float64 komponenX~%float64 komponenY~%float64 komponenZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagCalc-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagCalc-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MagCalc-request
    (cl:cons ':komponenX (komponenX msg))
    (cl:cons ':komponenY (komponenY msg))
    (cl:cons ':komponenZ (komponenZ msg))
))
;//! \htmlinclude MagCalc-response.msg.html

(cl:defclass <MagCalc-response> (roslisp-msg-protocol:ros-message)
  ((magnitude
    :reader magnitude
    :initarg :magnitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass MagCalc-response (<MagCalc-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagCalc-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagCalc-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name package-srv:<MagCalc-response> is deprecated: use package-srv:MagCalc-response instead.")))

(cl:ensure-generic-function 'magnitude-val :lambda-list '(m))
(cl:defmethod magnitude-val ((m <MagCalc-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package-srv:magnitude-val is deprecated.  Use package-srv:magnitude instead.")
  (magnitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagCalc-response>) ostream)
  "Serializes a message object of type '<MagCalc-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'magnitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagCalc-response>) istream)
  "Deserializes a message object of type '<MagCalc-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagCalc-response>)))
  "Returns string type for a service object of type '<MagCalc-response>"
  "package/MagCalcResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagCalc-response)))
  "Returns string type for a service object of type 'MagCalc-response"
  "package/MagCalcResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagCalc-response>)))
  "Returns md5sum for a message object of type '<MagCalc-response>"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagCalc-response)))
  "Returns md5sum for a message object of type 'MagCalc-response"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagCalc-response>)))
  "Returns full string definition for message of type '<MagCalc-response>"
  (cl:format cl:nil "float64 magnitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagCalc-response)))
  "Returns full string definition for message of type 'MagCalc-response"
  (cl:format cl:nil "float64 magnitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagCalc-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagCalc-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MagCalc-response
    (cl:cons ':magnitude (magnitude msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MagCalc)))
  'MagCalc-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MagCalc)))
  'MagCalc-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagCalc)))
  "Returns string type for a service object of type '<MagCalc>"
  "package/MagCalc")
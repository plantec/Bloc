Class {
	#name : #BlTktDecoratedCommand,
	#superclass : #BlTktProtoCommand,
	#instVars : [
		'command'
	],
	#category : #'Bloc-TaskIt-Commands'
}

{ #category : #converting }
BlTktDecoratedCommand >> asBlTktLoggingCommand [
	^ self includesLoggingCommand 
		ifFalse: [ BlTktLoggingCommand new command: self ]
		ifTrue: [ self ]
]

{ #category : #taskit }
BlTktDecoratedCommand >> canHandleTerminationRequest [
	<return: #Boolean>
	^ self command canHandleTerminationRequest
]

{ #category : #accessing }
BlTktDecoratedCommand >> catchingErrors [
	^ command catchingErrors
]

{ #category : #accessing }
BlTktDecoratedCommand >> command [
	<return: #BlTktProtoCommand>
	^ command
]

{ #category : #accessing }
BlTktDecoratedCommand >> command: aCommand [
	self
		assert: [ aCommand isNotNil ]
		description: [ 'Command must be non-nil' ].
	command := aCommand
]

{ #category : #testing }
BlTktDecoratedCommand >> includesLoggingCommand [
	<return: #Boolean>
	^ self command includesLoggingCommand
]

{ #category : #accessing }
BlTktDecoratedCommand >> name: aString [
	self command name: aString
]

{ #category : #taskit }
BlTktDecoratedCommand >> taskExecution: anExecution [
	self command taskExecution: anExecution
]

{ #category : #actions }
BlTktDecoratedCommand >> terminate [
	self command terminate
]

{ #category : #actions }
BlTktDecoratedCommand >> terminateWithReason: aReason [
	self command terminateWithReason: aReason
]
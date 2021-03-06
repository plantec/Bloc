Class {
	#name : #BlTelemetryTasks,
	#superclass : #LinkedList,
	#category : #'Bloc-Space - Telemetry'
}

{ #category : #converting }
BlTelemetryTasks >> asTask [
	^ self size = 1
		ifTrue: [ self first ]
		ifFalse: [ BlTelemetryTask new
			name: 'Total';
			startTime: self first startTime;
			endTime: self last endTime;
			tasks: self ]
]

{ #category : #accessing }
BlTelemetryTasks >> totalDuration [
	^ self
		ifEmpty: [ 0 seconds ]
		ifNotEmpty: [ self sum: [ :eachTask | eachTask duration ] ]
]

V2X Collision Warning System

Designed for intelligent transportation and connected vehicle safety applications.

Core Topology

This design enables real-time collision risk detection through Vehicle-to-Everything (V2X) communication and predictive safety analysis. The system exchanges vehicle status information such as position, speed, direction, and acceleration with nearby vehicles and infrastructure nodes to identify potential collision scenarios and generate timely warning alerts.

Validation Guide
Apply reset (rst_n low) to initialize the collision monitoring and communication modules.
Assert rst_n high to begin V2X message processing and continuous vehicle state tracking.
Provide simulated or real-time vehicle data inputs representing surrounding traffic participants.
Observe collision risk assessment outputs and warning indications on the designated output signals as vehicle trajectories converge toward hazardous conditions.
Verify that warning alerts are generated only when the predicted collision probability exceeds the configured safety threshold.

%% LEO Satellite EPS Parameter Initialization
clear; clc;

%% 1. Orbital Environment Parameters
T_orbit = 90 * 60;          % Total orbital period (90 minutes converted to seconds)
T_eclipse = 35 * 60;        % Time spent in Earth's shadow (35 minutes in seconds)
T_sunlight = T_orbit - T_eclipse; % Time spent in sunlight (55 minutes)

% Solar Irradiance constant in LEO (W/m^2)
G_space = 1361; 

%% 2. Solar Array (Generation) Sizing
% Let's design a ~150W peak Solar Array using multi-junction cells (~30% efficiency)
SA_Efficiency = 0.30;
SA_Area = 0.40;             % Surface area in square meters
P_sa_peak = G_space * SA_Area * SA_Efficiency; % Peak generation (~163W)

%% 3. Battery Storage (Lithium-Ion) Parameters
% Designing a 28V Unregulated Bus System
Bat_NominalVoltage = 28;     % Volts (V)
Bat_Capacity_Ah = 15;        % Ampere-hours (Ah)
Bat_InitialSoC = 95;        % Initial State of Charge (%)

%% 4. Dynamic Payload Power Profiles (Watts)
P_Payload_Baseload = 40;    % Always-on systems (Thermal, OBC, Telemetry)
P_Payload_Imaging = 80;     % High-power imaging payload (Active only intermittently)

disp('🚀 Satellite EPS Parameters successfully loaded into Workspace!');

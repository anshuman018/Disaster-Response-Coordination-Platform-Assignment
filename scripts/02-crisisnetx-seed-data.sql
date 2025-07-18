-- CrisisNetX Seed Data
-- Realistic Indian disaster scenarios and resources

-- Insert sample users
INSERT INTO users (id, email, username, full_name, role, phone, location_name, coordinates, verified) VALUES
('550e8400-e29b-41d4-a716-446655440001', 'admin@crisisnetx.in', 'admin', 'System Administrator', 'admin', '+91-9876543210', 'New Delhi, India', ST_Point(77.1025, 28.7041), true),
('550e8400-e29b-41d4-a716-446655440002', 'coordinator@ndrf.gov.in', 'ndrf_coord', 'NDRF Coordinator', 'coordinator', '+91-9876543211', 'Ghaziabad, UP', ST_Point(77.4538, 28.6692), true),
('550e8400-e29b-41d4-a716-446655440003', 'responder@mumbai.gov.in', 'mumbai_fire', 'Mumbai Fire Chief', 'responder', '+91-9876543212', 'Mumbai, Maharashtra', ST_Point(72.8777, 19.0760), true),
('550e8400-e29b-41d4-a716-446655440004', 'citizen1@gmail.com', 'concerned_citizen', 'Rajesh Kumar', 'citizen', '+91-9876543213', 'Ahmedabad, Gujarat', ST_Point(72.5714, 23.0225), true),
('550e8400-e29b-41d4-a716-446655440005', 'volunteer@redcross.in', 'red_cross_vol', 'Priya Sharma', 'responder', '+91-9876543214', 'Chennai, Tamil Nadu', ST_Point(80.2707, 13.0827), true);

-- Insert active disasters
INSERT INTO disasters (id, title, description, tags, location_name, coordinates, severity, status, disaster_type, affected_people, verified, created_by) VALUES
('660e8400-e29b-41d4-a716-446655440001', 
 'Ahmedabad Airport Aircraft Emergency', 
 'Commercial aircraft emergency landing at Sardar Vallabhbhai Patel International Airport. Emergency response teams deployed. Multiple casualties reported. Airport operations suspended.',
 ARRAY['aviation', 'emergency', 'casualties', 'airport'],
 'Ahmedabad Airport, Gujarat',
 ST_Point(72.6369, 23.0726),
 'critical',
 'active',
 'aviation_accident',
 150,
 true,
 '550e8400-e29b-41d4-a716-446655440002'),

('660e8400-e29b-41d4-a716-446655440002',
 'Assam Monsoon Floods 2024',
 'Severe flooding across multiple districts in Assam due to heavy monsoon rains. Brahmaputra river overflowing. Mass evacuation in progress. 50,000+ people affected.',
 ARRAY['flood', 'monsoon', 'evacuation', 'brahmaputra'],
 'Guwahati, Assam',
 ST_Point(91.7362, 26.1445),
 'high',
 'active',
 'flood',
 50000,
 true,
 '550e8400-e29b-41d4-a716-446655440002'),

('660e8400-e29b-41d4-a716-446655440003',
 'Delhi Yamuna Flood Crisis',
 'Yamuna river water level reaches record high of 208.5m. Unprecedented flooding in Delhi. Mass evacuation from low-lying areas. Transport severely affected.',
 ARRAY['flood', 'yamuna', 'evacuation', 'transport'],
 'New Delhi, Delhi',
 ST_Point(77.1025, 28.7041),
 'critical',
 'active',
 'flood',
 200000,
 true,
 '550e8400-e29b-41d4-a716-446655440001'),

('660e8400-e29b-41d4-a716-446655440004',
 'Wayanad Landslide Emergency',
 'Multiple landslides in Wayanad district due to heavy rainfall. Villages cut off from main roads. Helicopter rescue operations underway. Communication disrupted.',
 ARRAY['landslide', 'rescue', 'monsoon', 'helicopter'],
 'Wayanad, Kerala',
 ST_Point(76.1319, 11.6854),
 'critical',
 'active',
 'landslide',
 15000,
 true,
 '550e8400-e29b-41d4-a716-446655440005'),

('660e8400-e29b-41d4-a716-446655440005',
 'Chennai Cyclone Michaung Alert',
 'Cyclone Michaung approaching Chennai coast. Wind speeds up to 120 kmph expected. Coastal evacuation centers opened. Fishermen advised to return.',
 ARRAY['cyclone', 'coastal', 'evacuation', 'weather'],
 'Chennai, Tamil Nadu',
 ST_Point(80.2707, 13.0827),
 'high',
 'monitoring',
 'cyclone',
 75000,
 true,
 '550e8400-e29b-41d4-a716-446655440005'),

('660e8400-e29b-41d4-a716-446655440006',
 'Mumbai Heavy Rainfall Warning',
 'IMD issues red alert for Mumbai. Heavy to very heavy rainfall expected. Local train services may be affected. Citizens advised to avoid unnecessary travel.',
 ARRAY['rainfall', 'transport', 'warning', 'imd'],
 'Mumbai, Maharashtra',
 ST_Point(72.8777, 19.0760),
 'medium',
 'monitoring',
 'weather',
 5000,
 true,
 '550e8400-e29b-41d4-a716-446655440003');

-- Insert disaster reports
INSERT INTO disaster_reports (id, disaster_id, user_id, title, description, image_url, location_name, coordinates, priority, status) VALUES
('770e8400-e29b-41d4-a716-446655440001',
 '660e8400-e29b-41d4-a716-446655440001',
 '550e8400-e29b-41d4-a716-446655440004',
 'Witnessed Aircraft Emergency',
 'Saw the aircraft making emergency landing from terminal building. Emergency vehicles rushing to runway. Smoke visible from aircraft.',
 'https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=800',
 'Ahmedabad Airport Terminal',
 ST_Point(72.6369, 23.0726),
 'urgent',
 'verified'),

('770e8400-e29b-41d4-a716-446655440002',
 '660e8400-e29b-41d4-a716-446655440002',
 '550e8400-e29b-41d4-a716-446655440004',
 'Flood Water Rising Fast',
 'Water level in our locality has risen by 3 feet in last 2 hours. Ground floor completely submerged. Need immediate evacuation assistance.',
 'https://images.unsplash.com/photo-1547036967-23d11aacaee0?w=800',
 'Guwahati Residential Area',
 ST_Point(91.7362, 26.1445),
 'urgent',
 'pending'),

('770e8400-e29b-41d4-a716-446655440003',
 '660e8400-e29b-41d4-a716-446655440003',
 '550e8400-e29b-41d4-a716-446655440004',
 'Yamuna Overflowing Near ITO',
 'Yamuna water has crossed the danger mark near ITO. Roads completely waterlogged. Traffic at standstill. People evacuating on foot.',
 'https://images.unsplash.com/photo-1574687943971-ac2b0b4b2b8c?w=800',
 'ITO, New Delhi',
 ST_Point(77.2496, 28.6289),
 'high',
 'verified');

-- Insert resources (shelters, hospitals, relief centers)
INSERT INTO resources (id, name, type, description, location_name, coordinates, capacity, current_occupancy, status, contact_phone, facilities) VALUES
('880e8400-e29b-41d4-a716-446655440001',
 'NDRF Rescue Base Ahmedabad',
 'relief_center',
 '24/7 rescue operations center with helicopter pad. Equipped with medical facilities and emergency supplies.',
 'Ahmedabad NDRF Base, Gujarat',
 ST_Point(72.6000, 23.0500),
 500,
 200,
 'active',
 '+91-79-26851234',
 ARRAY['medical', 'helicopter', 'rescue_equipment', 'communication']),

('880e8400-e29b-41d4-a716-446655440002',
 'Guwahati Relief Camp',
 'shelter',
 'Large capacity evacuation center with food distribution and medical aid. Set up for flood victims.',
 'Pragati Maidan, Guwahati',
 ST_Point(91.7500, 26.1500),
 1000,
 750,
 'active',
 '+91-361-2345678',
 ARRAY['food', 'medical', 'sanitation', 'communication']),

('880e8400-e29b-41d4-a716-446655440003',
 'AIIMS Trauma Center',
 'hospital',
 'Premier trauma care facility with 500 bed capacity. Emergency surgery and critical care available 24/7.',
 'AIIMS, New Delhi',
 ST_Point(77.2090, 28.5672),
 500,
 350,
 'active',
 '+91-11-26588500',
 ARRAY['emergency_surgery', 'icu', 'blood_bank', 'ambulance']),

('880e8400-e29b-41d4-a716-446655440004',
 'Kerala Emergency Shelter',
 'shelter',
 'Mountain rescue base camp with helicopter landing facility. Specialized for landslide rescue operations.',
 'Wayanad District HQ',
 ST_Point(76.1500, 11.7000),
 300,
 180,
 'active',
 '+91-4936-202020',
 ARRAY['mountain_rescue', 'helicopter', 'medical', 'food']),

('880e8400-e29b-41d4-a716-446655440005',
 'Chennai Evacuation Center',
 'evacuation_center',
 'Coastal evacuation facility for cyclone emergencies. Reinforced building with emergency supplies.',
 'Marina Beach Area, Chennai',
 ST_Point(80.2800, 13.0500),
 800,
 600,
 'active',
 '+91-44-28511234',
 ARRAY['cyclone_shelter', 'food', 'medical', 'communication']),

('880e8400-e29b-41d4-a716-446655440006',
 'Mumbai Relief Operations',
 'relief_center',
 'Multi-agency coordination center for Mumbai disaster response. Food distribution and medical aid.',
 'Bandra Kurla Complex, Mumbai',
 ST_Point(72.8700, 19.0600),
 400,
 150,
 'active',
 '+91-22-26592000',
 ARRAY['coordination', 'food', 'medical', 'transport']);

-- Insert response teams
INSERT INTO response_teams (id, name, type, description, contact_phone, base_location, coordinates, capacity, status, specializations, leader_id) VALUES
('990e8400-e29b-41d4-a716-446655440001',
 'NDRF 1st Battalion',
 'rescue',
 'National Disaster Response Force specialized rescue team with water rescue capabilities.',
 '+91-79-26851234',
 'Ahmedabad, Gujarat',
 ST_Point(72.6000, 23.0500),
 50,
 'deployed',
 ARRAY['water_rescue', 'aviation_rescue', 'medical_first_aid'],
 '550e8400-e29b-41d4-a716-446655440002'),

('990e8400-e29b-41d4-a716-446655440002',
 'Assam State Disaster Team',
 'rescue',
 'State disaster response team specialized in flood rescue operations.',
 '+91-361-2345678',
 'Guwahati, Assam',
 ST_Point(91.7362, 26.1445),
 30,
 'deployed',
 ARRAY['flood_rescue', 'boat_operations', 'evacuation'],
 '550e8400-e29b-41d4-a716-446655440002'),

('990e8400-e29b-41d4-a716-446655440003',
 'Delhi Fire & Rescue',
 'fire',
 'Delhi Fire Service emergency response team with water rescue capabilities.',
 '+91-11-101',
 'New Delhi, Delhi',
 ST_Point(77.1025, 28.7041),
 40,
 'deployed',
 ARRAY['fire_rescue', 'water_rescue', 'technical_rescue'],
 '550e8400-e29b-41d4-a716-446655440003');

-- Insert active alerts
INSERT INTO alerts (id, disaster_id, title, message, alert_type, severity, coordinates, active, created_by) VALUES
('aa0e8400-e29b-41d4-a716-446655440001',
 '660e8400-e29b-41d4-a716-446655440001',
 'Airport Emergency - Avoid Area',
 'Aircraft emergency at Ahmedabad Airport. All civilian traffic to avoid airport area. Emergency services deployed.',
 'safety',
 'critical',
 ST_Point(72.6369, 23.0726),
 true,
 '550e8400-e29b-41d4-a716-446655440002'),

('aa0e8400-e29b-41d4-a716-446655440002',
 '660e8400-e29b-41d4-a716-446655440002',
 'Immediate Evacuation Required',
 'Brahmaputra water level rising rapidly. Residents in low-lying areas must evacuate immediately to higher ground.',
 'evacuation',
 'emergency',
 ST_Point(91.7362, 26.1445),
 true,
 '550e8400-e29b-41d4-a716-446655440002'),

('aa0e8400-e29b-41d4-a716-446655440003',
 '660e8400-e29b-41d4-a716-446655440003',
 'Delhi Flood Warning',
 'Yamuna at danger level. Avoid Ring Road, ITO, Rajghat areas. Use alternate routes. Emergency shelters open.',
 'warning',
 'critical',
 ST_Point(77.1025, 28.7041),
 true,
 '550e8400-e29b-41d4-a716-446655440001');

-- Insert social media posts (mock Twitter/X data)
INSERT INTO social_posts (id, disaster_id, platform, username, content, location_name, coordinates, engagement_metrics, verified, priority, posted_at) VALUES
('bb0e8400-e29b-41d4-a716-446655440001',
 '660e8400-e29b-41d4-a716-446655440001',
 'twitter',
 'AhmedabadPolice',
 'URGENT: Aircraft emergency at SVPI Airport. All emergency services deployed. Avoid airport area. Updates to follow. #AhmedabadEmergency #AirportAlert',
 'Ahmedabad, Gujarat',
 ST_Point(72.6369, 23.0726),
 '{"likes": 1250, "retweets": 890, "replies": 234}',
 true,
 'urgent',
 NOW() - INTERVAL '30 minutes'),

('bb0e8400-e29b-41d4-a716-446655440002',
 '660e8400-e29b-41d4-a716-446655440002',
 'twitter',
 'AssamFloodAlert',
 'Brahmaputra water level rising rapidly. Evacuation orders for low-lying areas. Move to higher ground immediately. #AssamFloods #BrahmaputraAlert',
 'Guwahati, Assam',
 ST_Point(91.7362, 26.1445),
 '{"likes": 2100, "retweets": 1500, "replies": 456}',
 true,
 'urgent',
 NOW() - INTERVAL '1 hour'),

('bb0e8400-e29b-41d4-a716-446655440003',
 '660e8400-e29b-41d4-a716-446655440003',
 'twitter',
 'DelhiTrafficPolice',
 'Yamuna water level at record high 208.5m. Several roads waterlogged. Avoid: Ring Road, ITO, Rajghat area. Use alternate routes. #DelhiFloods',
 'New Delhi, Delhi',
 ST_Point(77.1025, 28.7041),
 '{"likes": 3400, "retweets": 2100, "replies": 678}',
 true,
 'high',
 NOW() - INTERVAL '2 hours');

-- Insert deployments
INSERT INTO deployments (id, team_id, disaster_id, location_name, coordinates, mission_type, personnel_count, created_by) VALUES
('cc0e8400-e29b-41d4-a716-446655440001',
 '990e8400-e29b-41d4-a716-446655440001',
 '660e8400-e29b-41d4-a716-446655440001',
 'Ahmedabad Airport',
 ST_Point(72.6369, 23.0726),
 'aviation_rescue',
 25,
 '550e8400-e29b-41d4-a716-446655440002'),

('cc0e8400-e29b-41d4-a716-446655440002',
 '990e8400-e29b-41d4-a716-446655440002',
 '660e8400-e29b-41d4-a716-446655440002',
 'Guwahati Flood Zone',
 ST_Point(91.7362, 26.1445),
 'flood_rescue',
 30,
 '550e8400-e29b-41d4-a716-446655440002');

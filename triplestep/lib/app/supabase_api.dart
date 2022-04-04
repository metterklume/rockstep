import 'package:supabase/supabase.dart';

// use your own SUPABASE_URL
const String SUPABASE_URL = 'https://qmwscwbmjyfwlccikrqf.supabase.co';

// use your own SUPABASE_SECRET key
const String SUPABASE_SECRET =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFtd3Njd2Jtanlmd2xjY2lrcnFmIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY0ODEzMzg0MywiZXhwIjoxOTYzNzA5ODQzfQ.nRCdXBhGnvKSpuYAR8cxgt21emNnmYp84i8MKnPF6_c';

final SupabaseClient supabase = SupabaseClient(SUPABASE_URL, SUPABASE_SECRET);

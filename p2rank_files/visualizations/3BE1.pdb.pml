
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/3BE1.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/3BE1.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [2071,2075,3290,3499,3500,3501,3291,34,35,36,3086,3292,3524,3293,3294,2085,2005,2057,2087,2089,2156,6,20,3514,3513,3512,21,22,270,271,25,26,27,30,28,211,2063,3498,2059,2056,2157,3060,3062,3064,2078] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4920,4084,4086,4087,4894,4895,4896,4897,5290,5287,5291,4293,4359,5293,5317,4331,4322,5315,4199,4200,4203,4733,4734,4735,4312,4313,4314,4315,4316,4317,4318,4196,4204,4208] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3121,3123,3163,3125,3316,116,3105,101,107,111,112,3104,89,95,147,62,104,115,141,142,139,2884,2886,3164,3096,3097] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [14,23,2020,16,445,447,438,645,257,274,258,446,1749,646,1752,1715,1771,1772,1786,1700,1706,1707,1710,1713,1680,1694,2010,2013,1770] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2168,2411,2420,2213,2221,2602,2603,2169,2598,2600,2850,2196,2179,2186,2184,2153,2162,2164,3065,3079,2368,2369,2384,2386,2205,2208,2199,2345,2350] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2613,2866,2865,3094,3096,3097,3078,2883,2644,2645,2885,3083,3098,3104,89,2400,2398,2462,2467,2469,2626,2470,2401,2442,2394,2395,2396,2403] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [6855,4235,6316,6317,6318,6851,6841,6845,6847,4285,4249,4284,4324,4240,4244,4304,4212,4229] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [7514,7528,7623,7525,7564,7510,7526,7511,7142,7144,7621] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [5302,5304,5305,5306,6506,6508,4378,4476,4494,6522,6521,6541,6543,4482,6549,4367,4372,4373,4498,4499,4501,4368,4375,5300,5301,5303] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [5864,7043,5759,7164,7492,7158,7162,7147,7148,7149,7150] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5259,5339,5348,5280,5301,5303,4374,6560,5302,5304,5305,5306,6508,6562,6564] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
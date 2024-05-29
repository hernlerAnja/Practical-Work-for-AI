
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
        
        load "data/3SD0.pdb", protein
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
 
        load "data/3SD0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1837,4019,1836,4002,4168,4169,3034,3030,3036,1811,4034,4018,4165,4167,4162,4163,3271,3275,4173,4180,2087,1860,3033,3037,2106,3040,3177,3192,3285,4147,3041,3039,3191,3266,3193,4161,3278,3282,4042,4148,4145,4146,3042,3044,4031,1809,1828,1853,4253,4268,4278,4252,4270,3992,1861,2088,2079,2083,2084,2089,2066,4183,4182,2081] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4633,4634,231,238,230,1235,1245,240,216,241,4658,4615,1483,1203,1205,1221,1222,4625,4626,1364,1365,1366,235,372,480,461,1350,1351,236,239,232,234,386,387,388,392,1372,4608,1238] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4042,4148,4139,4140,4141,4142,4145,4146,3015,3042,3044,3046,3064,3630,4030,3174,3175,3176,3286,3043,3045,4149,4058,3393,3584,3577,3063,3160,3009,3013,3597,3604,3611,3601,4059,3173,3579,3318,3580] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [239,206,257,258,259,368,369,370,780,782,208,798,800,355,787,807,1348,371,1344,1345,1349,1351,1261,1262,1343,1342,204,210,814,240,216,241,238,1245,1233,1234,833,859] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1481,1195,1450,1455,1456,468,470,1386,1368,1369,1370,1372,1376,1365,1366,461,466,473,477,4625,1471,1473,4658,4633,4863,4876,4878,4864,4860,4855,4880,4886,4884,4885] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4803,4804,4818,4820,2022,4817,4400,4401,4389,4391,4395,4805,1592,1594,2006,2008,2007,2015,2021,2023,1598,1603,1604,1610,1611,1612] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4333,4334,4335,4368,4373,1845,1846,1536,1500,4605,4611,4642,4643,1571,4261,4264,1573,1537,1538,1565,4370,4616,4617,1467,4292,4293,1808,1814,1815,1819,1820,4283,4263,4296,4297,4298] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [159,161,268,269,270,267,184,651,42,28,29,760,381,671,675,670] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3070,3184,3071,3073,3074,3075,3557,3186,3475,3476,3482,3478,3456,3458,2833,2834,2964,2966,2847,2989] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4064,3667,3619,3620,3789,3791,3829,4066,3766,3792,3793,4080,4079,4077,4071,4081,3702,3704,3767,3666,4102] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [870,1269,1280,1282,1283,991,992,994,995,996,1031,1032,2558,969,905,907,962,869] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1629,1636,1637,2389,2380,2382,2689,2690,1630,1634,1638,1639,1642,1136,1138,1135] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [4324,1811,4024,4025,4034,4035,4325,3644,3646,4527,3639,3641,3672,4296,4309,4311,1809,4290,1810] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3644,3646,3648,4527,3711,4555,1811,4025,4034,4035,3673,3674,3677,3678,3679,3672,4300,4309,4311,4570,4571,4557] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
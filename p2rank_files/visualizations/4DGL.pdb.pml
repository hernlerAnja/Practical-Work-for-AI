
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
        
        load "data/4DGL.pdb", protein
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
 
        load "data/4DGL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4583,4586,5192,5171,4585,4610,4587,5114,5118,5137,5135,4250,4244,4254,4278,4249,4234,4611,4612,4629,4255,4256,4258,4260,4321,4627,4302,4313,4395,4392,4436,5143,5144,5145,4365,5141,5734,4239,4597,4595,5193,5191,5189] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [905,906,907,908,3122,4136,4137,1184,611,612,613,614,3124,3710,548,575,1147,580,581,582,583,574,579,621,3859,4155,3858,3860,3861,3687,3707,3708,3678,3665,3666,3674,237,189,240,241,242,243,231,233,239,584,255,1181,1173,1176,1183,1187,1164,4133,296,295,552,903,904,3114,3115,4117,3120,3849,3698,3699,3848,3854] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [6527,6526,6511,6645,6646,6647,6759,6472,6481,6482,6461,6467,6462,7029,6630,6631,6998,7000,6865,7528,7530,7002,7003,7402,7531,7026,7044,7430,7431,7071,7045,7070,6464,7415,7538,7532,7533] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1412,1414,1416,6965,2291,6945,6668,6679,6676,2292,1869,6677,6678,2323,2329,6520,6670,6671,2287,2319,2321,6486,6488,6672,1883,2327,6477,6478,2884,2891,2890,2614,2615,2616,6946,6947,2613,6943,6517,1406,1407,6490,1870,2281,2282,2285,2288,2283,2289,2256,1936,1937,2260,2612,1828,1881,2290,1879,1880,1911,1878] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3654,3821,4621,4235,4620,4188,4189,4190,4187,3819,3820,4718,4721,4722,4720,4197,4213,4219,4216,4217,4210,4212,4057,3835,3837,4728,4729,3651,3716,3652,3655] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3553,3531,3552,3889,3887,3926,3928,4141,3919,3920,4161,3957,4160,4162,4093,3867,3866] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [7395,7420,7421,7422,7928,7103,7104,7096,7954,7953,7396,7397,8001,8002,7947,7393,7202,7132,7439,7437,7065,7067,7064] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [6500,6502,7563,7564,6721,6722,6758,7375,7390,7391,7690,7415,7538,7539,7403,6489,6482,6483,6485,6498,6660,6728,6511,6646,6647,6663,6473] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [1384,1385,1490,1386,1488,3011,2727,2729,2691,2692,2919,2921,2725,2726,2914] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6918,6730,6951,6972,6970,6971,6727,6341,6362,6363,6767,6729,6699,6736,6738,6697,6700] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [3700,3701,3836,3837,3853,3948,3949,4729,3914,3918,3919,3911,4745,4744,3912,3908,3688,3690,3873] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [99,59,100,1131,129,131,1156,1158,1126,1130,1118,512] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1068,1070,1063,1076,1101,1103,118,120,738,754,755,1060,972] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [8724,8730,6159,6169,7845,7857,7840,7307,7309,7311,8729,8707] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [6568,6411,6412,6607,6623,6401,6887,6886,6892,7005] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [2220,1740,2826,1771,1772,2834,2839,2864,2866,2838,1700] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1680,1683,1688,1681,1682,1684,1685,1687,1656,2188,2191,2189,2190,2192,1648,1649,1654,2022,1638,1644,1645] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [1211,1303,3196,3198,3224,3157,1206,1235,3225,1208,984] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        
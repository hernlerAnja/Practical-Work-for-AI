
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
        
        load "data/4NH1.pdb", protein
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
 
        load "data/4NH1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7924,3371,7081,3643,3646,3647,3372,8494,7073,7074,7085,8492,8495,7079,3640,8217,8219,3627,7893,7894,3378,7895,7482,7483,7086,3626,3368,3379,3665,3375,3376,8218,8458,8216,8215,7540,7863,7514,7539,7885,7884,7886,8484,7892] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [6242,6240,6241,6243,6280,6215,6216,6248,577,584,871,578,6249,6250,6251,8729,6574,6848,8717,8718,8723,8725,869,6851,8715,6573,6575,6571,6572,5870,5895,5896,853,851,852,833,585,8730,6814,6840,6219,6843,6850] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [3330,3697,3345,3702,3698,3699,3700,3701,3703,4229,4232,4130,3742,3745,4103,4131,4132,4233,4234,4116,4237,4238,4240,3347,3459,3565,3567,4231,3492,4247,3722,3723,3726,3738,3741,3707,3331,3727,3729,3162,3164,3167,3168,3170,3161,3227,3226,3225,3346] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [536,537,906,908,909,1338,1337,1438,951,1336,771,773,1435,1437,370,371,367,368,432,433,549,551,552,431,1309,1322,553,665,1439,1440,1447,1453,1444,1446,913,926,929,928,933,932,948,935] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [403,404,407,387,388,391,636,415,433,417,552,569,378,627,628,1462,1471,1472,1281,1282,1298,1596,1597,553,664,1445,1444,1446,1309,1310,1322,1323] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [3671,3429,3651,3062,3670,3619,3427,3428,3404,3439,3402,3436,3438,3464,3465,3041,3602] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [3209,3346,3206,3211,3172,3181,3182,3363,3194,3198,3201,3421,3422,3185,3430,3419,3227,3347,3458,4256,4239,4265,4116,4238,4240,3345] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [877,878,635,857,876,825,268,608,633,610,634,642,644,247,632,670,671,672,631,637,638,858,859,808] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [5731,6825,6826,5657,5659,6178,6179,6793,6799,6823,6803,6785,6159,5699,5676,5700,6797] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [425,6246,6288,384,6286,5787,5789,5841,5842,577,576,578,6249,5837,5840,5838,5839,6248,394,392,5834,390,5828] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [7303,7343,8441,8442,8469,8429,7344,7822,7823,7320,7818,7825,7819,7824,7301,8437,8447,8470] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [8320,8323,6693,6696,8100,8101,8102,8322,6456,6457,6679,8340,6458,6678,8337,8338] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [3201,3203,4092,4239,4265,4075,4076,4116,4240,4266,4104,4090] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [7481,7484,7485,7486,7487,7478,7893,7483,3370,3372,7932,3177,3178,3371,3219,3184,3188,3186,7890,7431,7891] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [654,409,628,1468,1470,601,1565,1568,1592,1566,1579,621,624,599,410,1272] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [4540,2859,5428,5430,4581,5425,4549,2853,4546,2857,2842,4554,2867,2869,4008,4010] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [3947,3808,4656,3918,4655,3901,3911,4140,3903] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [8066,8378,8379,8383,8374,8069,8056,8057,8065,8049,8414,8412,8388,8387] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [1216,2631,2637,65,2634,2635,2636,75,63,73,1214,1755,1746,1752,1787,1190] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [1153,1109,1862,1861,1124,1014] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [6412,6413,6422,6405,6730,6744,6770,6735,6743,6734,6739] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [6684,6685,8799,8800,8801,8676,8696] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [4694,4715,4821,4857,5123,4722,5177,4721,4824] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        
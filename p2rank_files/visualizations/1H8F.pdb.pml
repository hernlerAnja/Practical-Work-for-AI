
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
        
        load "data/1H8F.pdb", protein
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
 
        load "data/1H8F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4000,4017,4018,4041,1808,3999,4001,4167,4168,4146,1818,2056,3264,3266,4164,4166,4161,4162,4160,3262,3269,2057,3258,4030,4031,3178,4145,4147,3176,3041,3042,3043,3044,3192,3193,3194,3177,3270,3273,3276,3195,3198,3210,3256,3257,3065,1819,4279,3991,4277,4252,4246,4251,4182,4234,4180,1817,1826,1827,2053,2058,2059,2066,2068,2060,3031,3035,3036,3037,3045,3046,3047,2069,2074,2075,3028,3027,3040,3199,4267,2036] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1195,1362,1473,1355,1358,1360,1354,1356,1366,456,458,460,463,452,4632,4633,4613,4614,4624,4625,4870,4872,4874,239,241,4861,4862,4864,4865,4881,4859,4863,1471,1185,1372,1440,1376,1428,1461,1445,1446,4842,229,230,222,225,231,237,235,236,238,240,392,4880,1340,1341,1235,370,372,386,387,467,470,388,449,450,451,1224,1227,1211,1212,4607] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3178,4145,4147,3176,3629,4029,3010,3016,3014,3596,3063,3064,3065,3161,3174,4041,3600,3603,4057,4058,4138,4139,3576,3578,3583,3594,3610] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1341,1235,1252,1332,1333,1338,1251,370,372,770,772,204,257,258,259,208,788,790,355,777,823,851,797,1223] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1836,1798,1486,1489,1526,1527,1835,1809,1810,1566,4263,1563,4604,4642,1804,1805,4256,4260,4334,4333,1528,1555,1450,4615,4616,4367,4369,4641,4371,4372] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [660,159,161,363,42,28,29,184,269,182,183,362,379,750,641,661,266,268,381,270] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [981,982,1022,984,986,1273,1272,855,859,860,813,895,897,882,884,959,985,1257,1269,1270,1274,1264] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3449,3466,3467,3447,2848,3071,3073,2989,2990,2965,2967,3169,2834,2835,3185,3187,3556,3471] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [2022,1582,2000,2004,1592,1593,1594,1588,4828,4398,4399,4400,4377,4388,4806,4809,4810] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [3758,3665,3701,3702,3703,3790,3792,3787,3791,3765,3828,4069,4075,4076,4079,4070,4078,4063,3666] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1632,1619,1620,2357,2368,1621,1622,1626,1627,1390,1126,1125,1389,1629,1628,1656,2375,1128,2363] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [403,427,418,652,654,479,443,630,632,402,441,442] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [564,1080,547,549,2656,2585,2611,2612,2613,2609,2631,555,2586,556,551] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [685,4896,4897,4898,4689,4690,4688,393,396,395,732,733] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3886,3361,3353,3355,3356,5462,3348,3357,3362,3342,5391,5417,5392,5419,5415,5437] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [1528,1555,1450,1452,1580,4369,4386,1563,4256,4334] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        

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
        
        load "data/5WB8.pdb", protein
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
 
        load "data/5WB8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [69,87,90,94,60,68,88,89,3042,3043,106,3049,3051,70,2555,2389,2814,3021,3027,3023,2537,2815,3040,2335,2341,2343,101,93,100,104,61,4168,4170,4171,4207,4213,4214,4215,4217,4174,2399,3041,2552,2554,2395,2393] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [7305,7306,3938,3940,3930,3931,6672,7076,6806,6822,6823,6824,6604,6668,6661,6662,7307,7308,7075,7292,7315,7316,3895,4369,3898,3899,3901,3905,7313,6607,6609,6651,6652,7288,4350,4351,4352,6615,6617] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [4534,6237,6238,6251,4272,4518,4519,4528,4530,4732,4906,6239,6240,6241,6242,4907,6245,5955,5969,4719,4919,4920,4921,4922,4531,4291,4533,6233,6234,6321,6322,4307,4275,6225,6372,6376] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [7379,123,130,126,128,134,135,7541,138,7543,7544,7546,7383,7375,7376,7377,7378,7104,7382,366,364,343,7560,368,352,7559,7388,7392,7144,3953,3954,3950,3946,3948,3877,3875,3949,3888,3968,145,116,117,118] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3046,3043,107,70,69,3044,3045,3052,3053,180,182,150,155,156,318,181,49,55,56,220,300,303,208,211,183,186,188,299] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [271,464,650,634,274,1965,272,275,1969,1970,1972,1976,647,1963,1968,2111,1971,2055,451,259] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [7379,123,124,126,128,129,4120,3877,3949,3886,3887,3888,3822,3948,116,3870,4119,119] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3107,3113,3114,4224,4226,4161,3112,3272,3274,3275,4396,4397,4398,4400,4230,4636,3277,4399,4385] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [1678,1457,900,902,906,1098,1099,1105,1553,888,889,890,1471,1082,1094,1095,1409,1461,1469,1570,1406,1407,1408,894] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6290,6291,6310,6320,4299,4303,4304,4306,4469,4470,7500,7501,7693,7694,7695,7295,7297,7320,7322,7324,7503] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [6579,6435,6443,6447,6450,6428,6406,6432,6779,6780,7046,7060,6783,6784,6789,6790,6793,6794,7061,7059,7279,6401,6402] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4558,4412,4414,4559,4577,4336,4317,4318,4332,4329,4562,4333,4440,7310,4409,4441,4442] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [516,4104,4105,4047,4049,4042,4046,98,326,328,512,4030,4118,4119,347,765,129,4120] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [7315,7316,4366,4364,4370,3894,3895,3896,3881,7312,7314,4439,4440,7311,7313,3956,3955,3957,3960,3961,4405,4380,4371,4365,4404] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [6831,6682,6685,6859,6984,6722,6947,6971,6972,6951] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [7217,7939,7951,7958,7443,7444,7175,7172,7173,7174,7934,7959] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [3151,3669,3670,3701,3675,2902,2909,2910,2911,3178,3700,3161] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2120,2135,2138,2143,2250,2077,2079,2119,2162,2151,2086] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        
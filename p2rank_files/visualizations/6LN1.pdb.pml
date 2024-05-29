
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
        
        load "data/6LN1.pdb", protein
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
 
        load "data/6LN1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4692,4693,1855,1856,5027,4660,4694,4658,4659,4625,4628,4690,4691,5014,5012,5016,5017,4716,4718,4717,5059,5060,5025,1603,1888,1889,1964,1861,1863,1864,1963,1887,1930,1892,1893,1894,1895,1898,1928,1961,1868,1853,4618,4619,4593,4334,4335,4617,4333,4623,4594,4591,4598,4585,4587,4586,5061,1988,2285,2283,1929,2286,2287,1987,2271,2278,2260,2294,2296,2330,2331,2297,2265,2262,2263,2261,1605,1592,1604,4991,4994,4979,5000,5001,5008,5019,5015] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3062,3067,3070,3072,4203,3073,4200,4201,3285,4062,4063,4074,4075,4086,4044,4046,4202,4224,4216,4045,4217,4218,3310,3311,3044,3047,3054,3041,3701,3057,4102,4103,4195,3674,4101,4194,3221,3222,3238,3647,3093,3679,3654,3644,3645,3668,3671,3035,3037,3038,3039,3205,3666,3091,3092,3344,3319,4193,4196,3503,3502,3646] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1324,1441,1282,1284,1461,1462,292,302,303,451,452,1438,1439,1440,297,298,300,1454,1455,574,575,512,1456,541,540,545,546,1312,1340,1433,1341,1432,912,887,885,892,883,1431,740,1434,888,741,886,884,323,271,274,277,321,284,4984,287,939,265,266,267,269,322,435,909,916,917,905,1300,1301,1313,4981,4982,4983] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [5173,5157,5158,5154,5102,5094,2427,2428,2431,5160,2430,5149,5161,5140,5097,5116,5141,2421,2419,2410,2364,2372,2441,2443,5170,5171] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1848,1856,5027,4718,5025,1863,1864,4994,956,958,1027,5001,5008,5019,4996] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4593,4334,4335,4594,4586,1987,2271,2278,2294,2296,2297,3718,3720,3787,2265,2262,2263,2261] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1601,1605,1595,1584,1588,1592,1600,1602,1604,1615,4995,1582,1299,1301,1316,4977,4978,4987,4991,4993,4979,4980,1603] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4331,4333,4322,4623,4325,4314,4318,4335,2260,2264,4061,4063,4313,4312,2246,2257,2261] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4254,4258,4259,4228,4235,4261,4297,4298,4038,4432,4433,4236,4222] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4110,4111,3841,3880,4145,4154,4135,4136,4128,4129,3842,3736] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
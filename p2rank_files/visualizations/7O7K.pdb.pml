
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
        
        load "data/7O7K.pdb", protein
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
 
        load "data/7O7K.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [511,4457,4462,4550,4554,4440,4441,4463,4456,503,4250,4252,4442,4305,4439,3144,3147,3148,3150,3156,4268,4287,3829,4332,3807,3806,4581,4251,4269,4584,4585,4573,4580,4574,4586,3181,3153,502,3172,3396,3166,3170,3171,501,504,3176,3177,3179,3182,3330,3347,3202,3331,3329,3201,3422,3420,508,3423,4561,4590,4560,4594,4556,21,24,26,13,99,101,103,490,68,72,3453,4436,4455,3777,4435,4432,3775,3772,3773,3314,3782,4433,3799,4434,4331] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [296,300,306,309,311,2964,2933,2940,2941,312,1468,1467,1469,461,459,460,911,913,914,915,286,280,332,276,279,330,331,278,273,274,275,910,444,920,1329,1611,1327,1341,2882,2874,2884,2886,2851,1340,1352,1462,1456,1459,1460,1461,1466,1369,1368,1620,964,967,950,937,948,944,945,1490,1302,1309,1488,1489,1310,1312,1595,1597,1599,1600,1606,1607,1311,1576,1582,1588,1612,1616,1586,3372,3373,552,553,1482,1483,1484,3366,2962,3371,3360,2960,583,3374,3378,3381] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [88,484,486,100,91,92,2952,2953,300,301,3356,3397,3170,3171,528] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2150,2151,2902,2905,2149,2126,3726,3728,3711,3727,2917,2919,3715,2124,2125] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [35,849,850,865,866,44,4948,5156,5154,5155,853,58,4553,4947,5130,5131,5129] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [985,986,1643,1620,1623,1628,1629,1630,1631,1632,1633,1328,1345,1611,1344,1891,1612,1616] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3444,4468,4472,4475,4511,4512,4502,4503,3443,3445,512,509,542,544,4535,510] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
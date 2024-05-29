
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
        
        load "data/7A53.pdb", protein
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
 
        load "data/7A53.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1247,1259,1275,874,902,852,867,233,234,212,236,237,238,232,385,386,387,1370,1369,1373,1374,1375,1376,1368,1367,847,1366,1276,203,206,257,258,200,204,844,383,841,370,675,676,819,821,822,823,817,818,820] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3960,2964,2965,4070,3103,2934,3572,3575,3948,3949,4073,4065,4066,2930,2927,2931,2985,2935,3102,2983,2984,3087,3100,3976,3553,3975,3977,3546,3542,3545,4063,4064,3377,3521,3523,3524,3518,3519] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [227,228,229,233,234,236,1219,1235,1236,1259,1248,1389,1390,1391,403,231,232,386,387,1373,1374,1375,1376,453,451,509,475,476,480,447,1397,1521,1217,1526,1512,1514,1515] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2023,2024,2026,2027,2029,2046,2014,2021,1999,2052,2053,5237,2055,5190,2007,5229,5271,5272,2104,2152,5249,2098,2153,2102,5234,4668,5223,5227,5228,5230,5246] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3920,3936,3937,4073,4094,2959,3187,3188,4093,2946,2949,2954,3161,2962,3919,4224] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [5166,5200,5361,5363,5201,5202,5291,2015,2016,2019,1633,1634,1635,5167,5170,5355,5323,5348,5369,5364,5368] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4243,4245,4459,4504,4257,4256,3935,3952,3953,3592,3943,3944] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4935,4939,5193,5194,4633,4927,4932,4934,1486,2030,5162,1487,4947] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1082,1768,881,1047,1737] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
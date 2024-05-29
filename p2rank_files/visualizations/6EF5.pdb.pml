
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
        
        load "data/6EF5.pdb", protein
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
 
        load "data/6EF5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2136,2724,2725,2726,7331,3109,2755,3140,2696,2697,3481,3078,3086,3088,3082,3077,3081,3079,2114,3450,3451,3449,3452,2764,2167,2168,7339,7330,7334,7335,2134,7340,7341,7342,7325] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [7198,7199,6641,6649,6651,6642,5675,5698,6262,5676,6263,6264,6261,5729,5730,6322,7188,7193,6291,6293,6292,6257,7189,6640,7044,6672,6639,6644,6645] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [367,987,7281,925,927,929,7280,964,957,958,1311,1307,1313,397,364,365,366,7285,398,399,1303,1304,1306,345,342,335] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4520,4521,4522,7235,7236,4486,4551,4878,4872,4877,3949,4492,4493,3926,3927,5203,4882,4874,4875,3980,3981,7232,7239,7240,7241,3956] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [6008,5974,5975,5976,5978,5979,5980,5940,5970,5971,6010,3652,3641,3672,3673,3795,3639,5942,3770,3768,3767,3789] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [5566,5567,5396,5397,5544,723,734,754,757,721,5358,5388,733,735,5519,5420,5422,5516,5538,5536,5537] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3259,3148,3150,2989,2990,3278,3281,2965] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1834,1835,2004,2005,1978,1982,4293,4295,4296,4298,4318,4285,4287,4321,1796,1858,1860,4297,1826,2027,1976,1975,4328,1954] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [2446,2447,91,2401,2408,2413,2400,2407,88,89,90,2415,2411,6034,6069,2402,2406,2377,2380,66,213,183,185,187,188,207,186,6070] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [66,213,6092,24,6069,91,89,235,236,258,206,209,6066,6099,6089,207,6064] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [6687,6874,6877,6553,6905,6847,6873,6901,6904,6870,6872,6551,6581,6659,6660,6617] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1244,1245,1321,1322,1215,1532,1534,1535,1509,1563,1528,1530,1562,1278] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3307,3019,2990,3022,3301,3304,3334,3335,3303,3306,3053,3096,3097] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
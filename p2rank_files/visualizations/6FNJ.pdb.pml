
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
        
        load "data/6FNJ.pdb", protein
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
 
        load "data/6FNJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2857,2271,2269,2273,2860,2448,2855,2859,2863,2886,2889,2275,2324,2325,2326,2461,2462,2463,2838,2446,2447,2449,2451,2457,2820,2272,3385,3394,3397,3398,3399,3400,3401,3402,3403,2893,2717,2718,3311,3312,3383,3388,3389,3396,2465,2608,2609,2635,2636,2637,2823,2839] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [715,121,173,296,713,711,294,119,120,1249,1250,1230,1232,1235,1236,1245,1246,1247,1248,572,574,1158,694,117,1241,1243,1244,174,297,299,305,309,310,311,312,313,456,458,485,695,484,679,295,676,749,1159,741,742,745,716,719] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3564,3553,3556,3557,3559,3563,3558,3565,3566,3569,4100,4102,3150,3152,3151,3153,3155,4137,4140,4141,4164,4147,4163,4132,4153,3211,4142,4111,2010,1951,1945,1980,1981,4101] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2607,3388,3389,3392,2628,2635,2637,2657,2659,2629,2605,3375,3381,3219,2718,3380,3385,2708,3202,3203,3146,3147] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [455,458,453,483,485,477,1049,1050,1239,476,505,507,1227,1228,1232,1235,1236,1222,572,1066,1237,556] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [4172,4116,4121,4171,4173,1875,1840,2069,2033,2036,2035,1848,1850,1814,1970,4144,2006,2005,4169,4133,4130] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        